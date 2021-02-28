{-# LANGUAGE CPP, ForeignFunctionInterface #-}

module Xmobar.Plugins.Monitors.Batt.Binding (
        getApmPowerInfo,
        ApmPowerInfo (..),
        AcState (..), BatteryState(..)
) where

import Foreign
import Foreign.C

#include <sys/types.h>
#include <machine/apmvar.h>
type CApmPowerInfo = ()
foreign import ccall "apm.h get_power_info"
        c_getPowerInfo :: Ptr CApmPowerInfo -> IO CInt

data BatteryState = BatHigh | BatLow | BatCritical | BatCharging | BatAbsent | BatUnknown
        deriving (Show,Eq)

data AcState = AcOnline | AcOffline | AcBackup | AcUnknown
        deriving (Eq)

instance Show AcState where
        show AcOnline = "online"
        show AcOffline = "offline"
        show AcBackup = "backup"
        show AcUnknown = "unknown"

data ApmPowerInfo = ApmPowerInfo {
        apmBatteryState   :: BatteryState,
        apmAcState        :: AcState,
        apmBatteryPercent :: Int,
        apmMinutesLeft    :: Int
} deriving (Show, Eq)

getApmPowerInfo :: IO (Maybe ApmPowerInfo)
getApmPowerInfo =
  allocaBytes (#size struct apm_power_info) $ \powerinfo -> do
    res <- c_getPowerInfo powerinfo
    if res == -1 then return Nothing
      else do
        bstate  <- (#peek struct apm_power_info, battery_state) powerinfo
        acstate <- (#peek struct apm_power_info, ac_state) powerinfo
        blife   <- (#peek struct apm_power_info, battery_life) powerinfo
        minleft <- (#peek struct apm_power_info, minutes_left) powerinfo
        return $ Just ApmPowerInfo
                {
                        apmBatteryState   = transBatState (bstate :: CUChar),
                        apmAcState        = transAcState (acstate :: CUChar),
                        apmBatteryPercent = fromIntegral (blife :: CUChar),
                        apmMinutesLeft    = fromIntegral (minleft :: CUInt)
                }

transBatState :: Integral a => a -> BatteryState
transBatState s = case s of
        (#const APM_BATT_HIGH)      -> BatHigh
        (#const APM_BATT_LOW)       -> BatLow
        (#const APM_BATT_CRITICAL)  -> BatCritical
        (#const APM_BATT_CHARGING)  -> BatCharging
        (#const APM_BATTERY_ABSENT) -> BatAbsent
        _                           -> BatUnknown

transAcState :: Integral a => a -> AcState
transAcState s = case s of
        (#const APM_AC_ON)     -> AcOnline
        (#const APM_AC_OFF)    -> AcOffline
        (#const APM_AC_BACKUP) -> AcBackup
        _                      -> AcUnknown

{- vim: set filetype=haskell : -}
