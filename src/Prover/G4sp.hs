module Prover.G4sp where

import           Bounding    (for)
import           Formula     (Formula)
import qualified MultiSet    as M
import qualified Prover.G4ip as I

prove :: [Formula] -> Formula -> Bool
prove as f = I.prove1 (foldr (M.+>) M.empty (for as f), f)

-- prove as ([x], y) = I.prove1 (for as (x :> f)), f)
-- prove as (xs, y) = I.prove1 (unions (map (for as) (f : xs)), f)