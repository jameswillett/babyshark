import Data.List (intercalate, intersperse)

times :: Int -> a -> [a]
times n = take n . repeat

doos :: String
doos = surroundWith ", " "\n" $ intercalate " " $ rhythm $ 6 `times` "do"
  where surroundWith s e = (++) s . (++e)
        rhythm (x:y:xs) = x:(y ++ ","):xs

verses :: [String]
verses = [(++"!") $ join $ intersperse doos $ 4 `times` w | w <- things]
  where join = intercalate ""
        things = 
          [ "baby shark"
          , "mommy shark"
          , "daddy shark"
          , "grandma shark"
          , "grandpa shark"
          , "lets go hunt"
          , "run away"
          , "safe at last"
          , "its the end"
          ]

main :: IO()
main = putStrLn $ unlines verses
