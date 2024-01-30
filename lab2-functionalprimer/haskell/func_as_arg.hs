--create inpFunc
-- inpFunc = [1..5] 
inpFunc a b = [a..b]

--Define applicatorFunc
-- applicatorFunc inpFunc s = if s=='s' then sum inpFunc else (sum inpFunc)/5  
-- Guards
-- applicatorFunc :: (Ord a, Num a) => a -> Int
applicatorFunc inpFunc a b s    | s == 's' = sum (inpFunc a b)
                                | otherwise = (sum (inpFunc a b))/b

main = do
    let result = applicatorFunc inpFunc 1 20 's' --Call applicatorFunc with inpFunc and 'a' as args
    putStrLn("sum = " ++ show(result))