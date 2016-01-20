{-# LANGUAGE Safe #-}

module System.OpenBSD.Process ( pledge ) where

import Foreign
import Foreign.C
import System.Posix.Internals ( withFilePath )

pledge :: String -> Maybe [FilePath] -> IO ()

pledge promises paths =
  withCString promises $ \cproms ->
  withPaths2Array0 paths $ \paths_arr ->
  throwErrnoIfMinus1_ "pledge" (c_pledge cproms paths_arr)

withPaths2Array0 :: Maybe [FilePath] -> (Ptr (Ptr CChar) -> IO a) -> IO a

withPaths2Array0 Nothing f = f nullPtr

withPaths2Array0 (Just paths) f =
  withMany withFilePath paths $ \cstrs ->
  withArray0 nullPtr cstrs $ \paths_arr ->
  f paths_arr

foreign import ccall unsafe "unistd.h pledge"
  c_pledge :: CString -> Ptr CString -> IO CInt
