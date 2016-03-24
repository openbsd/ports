{-# LANGUAGE Safe #-}

module System.OpenBSD.Process ( pledge ) where

import Foreign
import Foreign.C
import System.Posix.Internals ( withFilePath )

-- | This function provides an interface to the OpenBSD
-- <http://man.openbsd.org/OpenBSD-current/man2/pledge.2 pledge(2)>
-- system call.
--
-- Passing 'Nothing' to the promises or paths arguments has the same
-- effect as passing NULL to the corresponding arguments of the system
-- call (i.e. not changing the current value).
pledge :: Maybe String -> Maybe [FilePath] -> IO ()

pledge promises paths =
  maybeWith withCString promises $ \cproms ->
  maybeWith withPaths2Array0 paths $ \paths_arr ->
  throwErrnoIfMinus1_ "pledge" (c_pledge cproms paths_arr)

withPaths2Array0 :: [FilePath] -> (Ptr (Ptr CChar) -> IO a) -> IO a

withPaths2Array0 paths f =
  withMany withFilePath paths $ \cstrs ->
  withArray0 nullPtr cstrs $ \paths_arr ->
  f paths_arr

foreign import ccall unsafe "unistd.h pledge"
  c_pledge :: CString -> Ptr CString -> IO CInt
