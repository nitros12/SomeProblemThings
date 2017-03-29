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
    {0, 0},
    {0, 0},
    {true, 0},
    {true, 0},
    {true, 1},
    {true, 1},
    {0, 0}
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
    head->next = (node *) malloc(sizeof(node));
    head->next->type = type;
    head->next->val = val;
    head->next->next = NULL;
}

node *make_head(types type, int val) {
    node *head = (node *) malloc(sizeof(node));
    head->type = type;
    head->val = val;
    head->next = NULL;
    return head;
}

node *lex(char *s) {
    node *head = make_head(-1, 0);

    while (*s) {
        switch (*s) {
            case '+':
                append(head, add, 0);
                break;
            case '-':
                append(head, sub, 0);
                break;
            case '*':
                append(head, mul, 0);
                break;
            case '/':
                append(head, DIV, 0);
                break;
            case '0' ... '9':
                {
                    char *end;
                    int v = strtol(s, &end, 10);
                    append(head, num, v);
                    s = --end; // realloc, use the consumed string
                    break;
                }
            case '(':
                append(head, lparen, 0);
                break;
            case ')':
                append(head, rparen, 0);
                break;
            default:
                break;
        }
        s++;
    }

    node *ret = head->next;
    free(head);
    return ret;
}

void printnode(node *head) {
    do {
        printf("<type %s> <val %d>\n", piecenames[head->type], head->val);
        head = head->next;
    } while (head->next != NULL);
}

void printOps(node *head) {
    do {
        if (head->type == num)
            printf(" %d ", head->val);
        else
            printf("%c", ops[head->type]);
        head = head->next;
    } while (head->next != NULL);
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


node *shunting_yard(node *head) {
    node *op_stack = NULL;
    node *output;
    node *op;

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
                pop(&op_stack); // remove paren
                break;
            default:
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
    //freenode(op_stack);
    //freenode(op_stack);
    //freenode(op);
    return output;
}

int main() {

    char *string = "4+3-5*(343/212)";
    node *parsed = lex(string);
    printnode(parsed);
    node *shunted = shunting_yard(parsed);
    printf("\n");
    printnode(shunted);
    printOps(shunted);
    //freenode(shunted);
    //freenode(parsed);
}
