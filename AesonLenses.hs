{-# LANGUAGE OverloadedStrings #-}
module AesonLenses where
import Control.Lens
import Data.Aeson.Lens
import Data.Aeson
import Data.Text (Text)
import qualified Data.ByteString as Strict (ByteString)
import Data.ByteString.Char8 as Strict.Char8
import qualified Data.ByteString.Lazy as Lazy (ByteString)
import qualified Data.Vector as Vector

{-- 
import Control.Lens
import Data.Aeson
import Data.Aeson.Lens
import Data.Text (Text)
import qualified Data.ByteString as Strict (ByteString)
import Data.ByteString.Char8 as Strict.Char8
import qualified Data.ByteString.Lazy as Lazy (ByteString)
import qualified Data.Vector as Vector
:set -XOverloadedStrings
--}

nullString = "null" ^?  _String
-- Nothing
someString = "\"something\"" ^?  _String
-- "something"
nullNumber = "null" ^?  _Number
-- Nothing
someNumber = "3456" ^?  _Number
-- Just 3456.0

