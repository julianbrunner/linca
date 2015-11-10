module Linca.Basic (equal, power) where

import Numeric.Natural
import Text.Printf

equal :: Eq a => a -> a -> a
equal a b
	| a /= b = error $ printf "Linca.Basic.equal: parameters a and b were not equal"
	| otherwise = a

power :: (a -> a) -> Natural -> (a -> a)
power _ 0 = id
power f n = f . power f (n - 1)