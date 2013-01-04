(*
Module: Test_Ntpd
  Provides unit tests for the <Ntpd> lens.
*)

module Test_ntpd =

test Ntpd.listen get "listen on *\n" =
  { "listen on"
    { "address" = "*" } }

test Ntpd.listen get "listen on 127.0.0.1\n" =
  { "listen on"
    { "address" = "127.0.0.1" } }

test Ntpd.listen get "listen on ::1\n" =
  { "listen on"
    { "address" = "::1" } }

test Ntpd.listen get "listen on ::1 rtable 4\n" =
  { "listen on"
    { "address" = "::1" }
    { "rtable" = "4" } }

test Ntpd.server get "server ntp.example.org\n" =
  { "server"
    { "address" = "ntp.example.org" } }

test Ntpd.server get "server ntp.example.org rtable 42\n" =
  { "server"
    { "address" = "ntp.example.org" }
    { "rtable" = "42" } }

test Ntpd.server get "server ntp.example.org weight 1 rtable 42\n" =
  { "server"
    { "address" = "ntp.example.org" }
    { "weight" = "1" }
    { "rtable" = "42" } }

test Ntpd.server get "server ntp.example.org weight 10\n" =
  { "server"
    { "address" = "ntp.example.org" }
    { "weight" = "10" } }


test Ntpd.sensor get "sensor *\n" =
  { "sensor"
    { "device" = "*" } }

test Ntpd.sensor get "sensor nmea0\n" =
  { "sensor"
    { "device" = "nmea0" } }

test Ntpd.sensor get "sensor nmea0 correction 42\n" =
  { "sensor"
    { "device" = "nmea0" }
    { "correction" = "42" } }

test Ntpd.sensor get "sensor nmea0 correction -42\n" =
  { "sensor"
    { "device" = "nmea0" }
    { "correction" = "-42" } }

test Ntpd.sensor get "sensor nmea0 correction 42 weight 2\n" =
  { "sensor"
    { "device" = "nmea0" }
    { "correction" = "42" }
    { "weight" = "2" } }

test Ntpd.sensor get "sensor nmea0 correction 42 refid Puffy\n" =
  { "sensor"
    { "device" = "nmea0" }
    { "correction" = "42" }
    { "refid" = "Puffy" } }

test Ntpd.sensor get "sensor nmea0 correction 42 stratum 2\n" =
  { "sensor"
    { "device" = "nmea0" }
    { "correction" = "42" }
    { "stratum" = "2" } }
