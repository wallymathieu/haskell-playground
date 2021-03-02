module Lenses where
import Control.Lens
import Data.Monoid

import qualified Data.Map as Map

f1=foldMapOf (traverse . both . _Just) Sum [(Just $ toInteger 21, Just $ toInteger 21)]

f2=foldMapOf (folded . both . _Just) Sum [(Just 21, Just 21)]

f3=foldMapOf (traverse . both . _Just) Product [(Just $ toInteger 21, Just $ toInteger 21)]

nestedMap = (fmap Map.fromList . Map.fromList) [(1, [(10, "one,ten"), (20, "one,twenty")]), (2, [(30, "two,thirty"), (40,"two,forty")])]

v = nestedMap^..(itraversed<.itraversed).withIndex
v2 = nestedMap^..(itraversed<.>itraversed).withIndex

v3 = nestedMap^..(itraversed.>itraversed).withIndex

v4 = Map.fromList [(2, "hello"), (1, "world")]^..ifolded.asIndex

-- any, all, none, 