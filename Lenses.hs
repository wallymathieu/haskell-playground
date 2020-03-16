module Lenses where
import Control.Lens
import Data.Monoid

f1=foldMapOf (traverse . both . _Just) Sum [(Just $ toInteger 21, Just $ toInteger 21)]

f2=foldMapOf (folded . both . _Just) Sum [(Just 21, Just 21)]

f3=foldMapOf (traverse . both . _Just) Product [(Just $ toInteger 21, Just $ toInteger 21)]

