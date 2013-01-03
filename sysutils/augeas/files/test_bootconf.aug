(*
Module: Test_BootConf
  Provides unit tests for the <BootConf> lens.
*)

module Test_bootconf =

test BootConf.boot get "boot\n" =
  { "boot" }

test BootConf.boot get "boot /bsd.rd\n" =
  { "boot"
    { "image" = "/bsd.rd"} }

test BootConf.boot get "boot tftp:bsd\n" =
  { "boot"
    { "image" = "tftp:bsd" } }

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
    { "command" = "diskinfo" } }

test BootConf.machine get "machine comaddr 0xdeadbeef\n" =
  { "machine"
    { "command" = "comaddr" }
    { "arg" = "0xdeadbeef" } }

test BootConf.machine get "machine memory\n" =
  { "machine"
    { "command" = "memory" } }

test BootConf.machine get "machine memory =64M\n" =
  { "machine"
    { "command" = "memory" }
    { "arg" = "=64M" } }

test BootConf.machine get "machine memory +0x2000000@0x1000000\n" =
  { "machine"
    { "command" = "memory" }
    { "arg" = "+0x2000000@0x1000000" } }

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

test BootConf.stty get "stty\n" =
  { "stty" }
