module Traversal where

f x = if x < 200 then [3 - x] else []
g x = if x < 200 then Just (3 - x) else Nothing

res210_t          = traverse f [1,2,3]  
res210_m          = fmap f [1,2,3]  
resSome210_t      = traverse g [1,2,3]  
resSome210_m      = fmap g [1,2,3]  
