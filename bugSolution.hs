The solution uses pattern matching to handle the case of an empty list:
```haskell
main :: IO ()
main = do
  let emptyList = [] :: [Int]
  let nonEmptyList = [1,5,2,8,3] :: [Int]
  let maxValEmpty = case emptyList of
                      [] -> 0  -- Handle the empty list case
                      (x:xs) -> maximum (x:xs)
  let maxValNonEmpty = case nonEmptyList of
                      [] -> 0
                      (x:xs) -> maximum (x:xs) 
  print maxValEmpty
  print maxValNonEmpty
```
Alternatively, using the `maybe` function:
```haskell
main :: IO ()
main = do
  let emptyList = [] :: [Int]
  let nonEmptyList = [1,5,2,8,3] :: [Int]
  let maxValEmpty = maybe 0 maximum emptyList
  let maxValNonEmpty = maybe 0 maximum nonEmptyList
  print maxValEmpty
  print maxValNonEmpty
```
Both solutions prevent the runtime error by providing a default value (0 in this case) when the list is empty.