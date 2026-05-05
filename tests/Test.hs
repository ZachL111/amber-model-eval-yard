import PortfolioCore

expect :: Bool -> IO ()
expect True = pure ()
expect False = error "fixture mismatch"

main :: IO ()
main = do
  let signalcase_1 = Signal 60 81 17 13 10
  expect (score signalcase_1 == 109)
  expect (classify signalcase_1 == "review")
  let signalcase_2 = Signal 99 74 25 21 7
  expect (score signalcase_2 == 110)
  expect (classify signalcase_2 == "review")
  let signalcase_3 = Signal 90 72 25 15 10
  expect (score signalcase_3 == 132)
  expect (classify signalcase_3 == "review")
