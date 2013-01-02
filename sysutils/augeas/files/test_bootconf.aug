(*
Module: Test_BootConf
  Provides unit tests for the <BootConf> lens.
*)

module Test_bootconf =

test BootConf.boot get "boot /bsd -s\n" =
  { "boot"
    { "image" = "/bsd" }
    { "arg" = "-s" } }

test BootConf.echo get "echo 42\n" =
  { "echo" = "42" }

test BootConf.ls get "ls /\n" = 
  { "ls" = "/" }

test BootConf.ls get "ls //\n" = 
  { "ls" = "//" }

test BootConf.ls get "ls /some/path/\n" = 
  { "ls" = "/some/path/" }

test BootConf.machine get "machine diskinfo\n" =
  { "machine"
    { "diskinfo" } }

test BootConf.machine get "machine comaddr 0xdeadbeef\n" =
  { "machine"
    { "comaddr" = "0xdeadbeef" } } 

test BootConf.set get "set tty com0\n" =
  { "set"
    { "tty" = "com0" } }

test BootConf.single_command get "help\n" =
  { "help" }

test BootConf.stty get "stty /dev/cuaU0 115200\n" =
  { "stty"
    { "device" = "/dev/cuaU0" }
    { "speed" = "115200" } }

test BootConf.stty get "stty /dev/cuaU0\n" =
  { "stty"
    { "device" = "/dev/cuaU0" } }
