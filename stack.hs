data Stack a = EmptyStack | Node a (Stack a) deriving (Show, Read, Eq)

initialstack :: a -> Stack a
initialstack n = Node n EmptyStack

stackpush :: a -> Stack a -> Stack a
stackpush n EmptyStack = initialstack n
stackpush n m          = Node n m

stackpop :: Stack a -> a
stackpop (Node n _) = n

stacktail :: Stack a -> Stack a
stacktail EmptyStack    = EmptyStack
stacktail (Node _ rest) = rest

instance Functor Stack where
  fmap _ EmptyStack    = EmptyStack
  fmap f (Node a rest) = Node (f a) (fmap f rest);

main :: IO()
main = do
  let s = foldr stackpush EmptyStack [1..99]
  print s
