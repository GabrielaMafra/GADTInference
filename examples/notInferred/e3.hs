data T a where {TInt :: (a ~ Int) => a -> T a; TBool :: (a ~ Bool) => a -> T a; TAny :: a -> T a}
e = \z -> case z of {(TInt n, y) -> if y then n else n; (TAny x, y) -> if y then x else x; (TBool b, y) -> y}
-- (T t, Bool) -> t
