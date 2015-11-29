module Linca.ByteString.Lazy (fold, replace) where

import Numeric.Natural
import Data.Monoid
import Data.Word
import qualified Data.ByteString.Lazy as BL

fold :: (Word8 -> a -> a) -> BL.ByteString -> a -> a
fold = flip . BL.foldl . flip

replace :: Natural -> BL.ByteString -> BL.ByteString -> BL.ByteString
replace offset chunk original = BL.take (fromIntegral offset) original <> chunk <> BL.drop (fromIntegral offset + BL.length chunk) original