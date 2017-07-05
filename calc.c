#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

// Yes this does SIGSEGV at random intervals

const char *piecenames[] = {
  "lparen",
  "rparen",
  "add",
  "sub",
  "mul",
  "div",
  "num"
};


// index: [assoc, presedence]
const int opassoc[7][2] = {
    {false, 0},
    {false, 0},
    {true, 1},
    {true, 1},
    {true, 2},
    {true, 2},
    {false, 0}
};

const char ops[] = "()+-*/ ";

typedef struct node node;
typedef struct piece piece;

typedef enum {
    lparen,
    rparen,

    add,
    sub,
    mul,
    DIV,
    num
} types;

typedef struct node {
    node *next;
    types type;
    int val;
} node;

void append(node *head, types type, int val) {
    while (head->next) {
        head = head->next;
    }
    head->next =  malloc(sizeof(node));
    head->next->type = type;
    head->next->val = val;
    head->next->next = NULL;
}

node *make_head(types type, int val) {
    node *head =  malloc(sizeof(node));
    head->type = type;
    head->val = val;
    head->next = NULL;
    return head;
}

node *lex(char *s) {
    node head = {0};

    while (*s) {
        switch (*s) {
            case '+':
                append(&head, add, 0);
                break;
            case '-':
                append(&head, sub, 0);
                break;
            case '*':
                append(&head, mul, 0);
                break;
            case '/':
                append(&head, DIV, 0);
                break;
            case '0' ... '9':
                {
                    char *end;
                    int v = strtol(s, &end, 10);
                    append(&head, num, v);
                    s = --end; // realloc, use the consumed string
                    break;
                }
            case '(':
                append(&head, lparen, 0);
                break;
            case ')':
                append(&head, rparen, 0);
                break;
        }
        s++;
    }

    return head.next;
}

void printnode(node *head) {
    while (head != NULL) {
        printf("<type %s> <val %d>\n", piecenames[head->type], head->val);
        head = head->next;
    }
}

void printOps(node *head) {
    while (head != NULL) {
        if (head->type == num)
            printf(" %d ", head->val);
        else
            printf("%c", ops[head->type]);
        head = head->next;
    }
    printf("\n");
}

void freenode(node *head) {
    node *cur;
    while (head != NULL) {
      cur = head;
      head = head->next;
      free(cur);
    }
}

void push(node **head, node *val) {
    val->next = *head;
    *head = val;
}

node *pop(node **head) {
    node *temp = *head;
    (*head) = (*head)->next;
    return temp;
}

void reverse(node **mhead) {
  node *head = *mhead;
  node *temp, *last=NULL;
  while (head != NULL) {
    temp = head->next;
    head->next = last;
    last = head;
    head = temp;
  }
  *mhead = last;
}


node *shunting_yard(node *head) {
    node *op_stack = NULL;
    node *output = NULL;
    node *op = NULL;

    while (head != NULL) {
        op = pop(&head);
        //printnode(head);
        //printf("\n");
        switch (op->type) {
            case num:
                push(&output, op);
                break;
            case add:
            case sub:
            case mul:
            case DIV: {
                while (op_stack != NULL) {
                    if ((opassoc[op->type][0] && opassoc[op->type][1] <= opassoc[op_stack->type][1])
                       || (!opassoc[op->type][0] && opassoc[op->type][1] < opassoc[op_stack->type][1])) {
                        push(&output, pop(&op_stack));
                    }
                    else
                        break;
                }
                push(&op_stack, op);
                break;
            }
            case lparen:
                push(&op_stack, op);
                break;
            case rparen:
                while (op_stack->type != lparen)
                    push(&output, pop(&op_stack));
                free(pop(&op_stack)); // remove paren, also freeing it
                free(op);
                break;
            default:
                free(op); // free since we're not using it
                break;
        }
    }
    while (op_stack != NULL) {
        op = pop(&op_stack);
        switch (op->type) {
            case lparen:
            case rparen:
                puts("Mismatched brackets! Halting");
                exit(1);
                break;
            default:
                push(&output, op);
                break;
        }
    }
    reverse(&output);
    return output;
}


int list_length(node *head) {
  int c=0;
  while (head != NULL) {
    if (head->type == num) c++;
    head = head->next;
  }
  return c;
}


int calculate(node *head) {

  int max = list_length(head);
  int stack[max];
  int pos=0;
  int l,r;

  while (head != NULL) {
    switch (head->type) {
      case num:
        stack[pos++] = head->val;
        break;
      case add:
        l = stack[--pos];
        r = stack[--pos];
        stack[pos++] = r + l;
        break;
      case sub:
        l = stack[--pos];
        r = stack[--pos];
        stack[pos++] = r - l;
        break;
      case mul:
        l = stack[--pos];
        r = stack[--pos];
        stack[pos++] = r * l;
        break;
      case DIV:
        l = stack[--pos];
        r = stack[--pos];
        stack[pos++] = r / l;
        break;
      default:
        break;
    }
    head = head->next;
  }
  return stack[--pos];
}

int main(int argc, char **argv) {

    if (argc < 2) {
      printf("Usage: %s <expression>", *argv);
      return 0;
    }

    char *string = argv[1];
    node *parsed = lex(string);
    node *shunted = shunting_yard(parsed);
    printf("%s = %d\n", string, calculate(shunted));
    freenode(shunted);
}
