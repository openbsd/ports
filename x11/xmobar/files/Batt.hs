module Xmobar.Plugins.Monitors.Batt where

import Xmobar.Plugins.Monitors.Common
import Xmobar.Plugins.Monitors.Batt.Binding

battConfig :: IO MConfig
battConfig = mkMConfig
       "Batt: <left>" -- default template
       ["left", "leftbar", "minleft", "status"] -- percent left, progress bar, minutes left, status

runBatt :: [String] -> Monitor String
runBatt _ = do
        mpowerinfo <- io getApmPowerInfo
        case mpowerinfo of
                Nothing -> parseTemplate $ take 4 $ repeat "N/A"
                Just powerinfo -> do
                        left <- renderLeft powerinfo
                        leftbar <- renderLeftBar powerinfo
                        minleft <- renderMinLeft powerinfo
                        status <- renderStatus powerinfo
                        parseTemplate ( left : leftbar : minleft : status : [] )

renderLeft :: ApmPowerInfo -> Monitor String
renderLeft powerinfo = case (apmBatteryState powerinfo) of
        BatAbsent  -> return []
        BatUnknown -> return []
        _          -> return $ (show $ apmBatteryPercent powerinfo) ++ "%"

renderLeftBar :: ApmPowerInfo -> Monitor String
renderLeftBar powerinfo = case (apmBatteryState powerinfo) of
        BatAbsent  -> render 0
        BatUnknown -> render 0
        _          -> render $ fromIntegral (apmBatteryPercent powerinfo)
        where
                render x = showPercentBar x (x / 100)

renderMinLeft :: ApmPowerInfo -> Monitor String
renderMinLeft powerinfo = case (apmAcState powerinfo) of
        AcOnline  -> return []
        AcUnknown -> return []
        _         -> return $ (show $ apmMinutesLeft powerinfo) ++ "min"

renderStatus :: ApmPowerInfo -> Monitor String
renderStatus powerinfo = return.show $ apmAcState powerinfo
