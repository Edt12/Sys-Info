import System.Info
import System.Process
import Data.Text.Internal.Fusion (Stream)


getOperatingSystem :: String -> String
getOperatingSystem x = if os == "mingw32"
                            then "Windows"
                        else
                            "linux"
getCPU :: String -> IO String
getCPU x = if x == "mingw32"
                then readProcess "cmd /c dir" {- Figure out why this isnt working when callCommand is-}

            else
                readProcess "cmd" ["/c","ls"] ""
main = do
    --putStrLn is just a function that takes the parameters and then returns an empty tuple
    putStrLn ("Operating System: " ++ getOperatingSystem os)
    putStrLn ("Architecture: " ++ arch)
    callCommand "cmd /c dir"
