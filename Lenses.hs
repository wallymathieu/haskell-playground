import Control.Lens
import Data.Monoid
foldMapOf (traverse . both . _Just) Sum [(Just $ toInteger 21, Just $ toInteger 21)]

foldMapOf (folded . both . _Just) Sum [(Just 21, Just 21)]

foldMapOf (traverse . both . _Just) Product [(Just $ toInteger 21, Just $ toInteger 21)]

