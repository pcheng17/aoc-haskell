main :: IO ()
main = do
    contents <- readFile "./2021/inputs/01.txt"
    let numbers = map read $ lines contents :: [Int]
        p1 = part1 numbers
        p2 = part2 numbers
    putStr "Part 1: " >> print p1
    putStr "Part 2: " >> print p2


part1 :: [Int] -> Int
part1 numbers = length . filter (uncurry (<)) $ zip numbers (drop 1 numbers)

part2 :: [Int] -> Int
part2 numbers = part1 . map (\(x, y, z) -> x + y + z) $ zip3 numbers (drop 1 numbers) (drop 2 numbers)

