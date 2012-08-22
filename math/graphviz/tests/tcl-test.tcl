#!/usr/bin/tclsh

# display the kernel module dependencies 

# author: John Ellson <ellson@research.att.com>

package require gv

set G [gv::digraph G]

set N1 [gv::node $G "a"]
set N2 [gv::node $G "b"]
set N3 [gv::node $G "c"]

set E1 [gv::edge $N1 $N2]
set E2 [gv::edge $N2 $N3]
set E3 [gv::edge $N3 $N1]

gv::layout $G dot
gv::render $G xlib
