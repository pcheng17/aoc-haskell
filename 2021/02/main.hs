main :: IO ()
main = do
    contents <- readFile "./2021/inputs/02.txt"
    let commands = [(direction, read num :: Int) | [direction, num] <- map words $ lines contents]
        p1 = part1 commands
        p2 = part2 commands
    putStr "Part 1: " >> print p1
    putStr "Part 2: " >> print p2


part1 :: [(String, Int)] -> Int
part1 commands = x * y
    where
        (x, y) = foldl processCommand (0, 0) commands
        processCommand (x, y) (cmd, num) = case cmd of
            "forward" -> (x + num, y)
            "up"      -> (x, y - num)
            "down"    -> (x, y + num)

part2 :: [(String, Int)] -> Int
part2 commands = x * y
    where
        (x, y, a) = foldl processCommand (0, 0, 0) commands
        processCommand (x, y, a) (cmd, num) = case cmd of
            "forward" -> (x + num, y + a * num, a)
            "up"      -> (x, y, a - num)
            "down"    -> (x, y, a + num)
