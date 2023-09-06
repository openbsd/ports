# Wayland on OpenBSD

## Introduction

These are matthieu@'s' notes from experimenting with building Wayland bits on
OpenBSD during g2k23 in Tallinn... Thanks to the OpenBSD foundation for
organizing this event.

This is still far from a complete running system as there are many issues on
the road, but it's a good start and it shows that it's definatly not impossible
to get Wayland running on OpenBSD.

Updated to reflect that all of this in now a work in progress set of ports

### Disclaimers

 * Some stuff here may look naive or totally wrong to experimented Wayland
   developers...

 * The build instructions below may break your system. Use a separate machine
   for testing Wayland

## General ideas

 * This work is using the wlroots library and will focus on compositors (sway,
   tinywl+...) and applications that use it
     * Gnome (GTK+) based or Qt-based application will wait until someone else
       builds Wayland support for those toolkits on OpenBSD
 * The output path is more or less ready with the DRI and Mesa porting efforts
   (mostly jsg and kettenis)
 * "Seat" management is going to be minimal, as OpenBSD doesn't support this:
     * seatd and libseat provide support for non-systemd based systems. A basic
       port to OpenBSD/wscons is needed. For now the "noop" backend is enough to
       be able to run sway.
 * Input is more complex to get working since Wayland applications expect Linux
   input model with udev, evdev and libinput.
   * udev is used to probe available device and handle hot-plugging on Linux.
     OpenBSD doesn't have it and the current state of hotplugd(8) doesn't make it
     possible to really emulate udev. There is a `libudev-openbsd` port already
     that can be used.
   * evdev is the input event layer of the Linux kernel, similar to
     wscons_events in OpenBSD. It's mostly hidden by libinput, but event name
     translation need the libevdev library for some reason.
   * libinput is the library that permits reading evdev events from the Linux
     kernel and  handling many of the higher level interpretation of the events
     (getting the keyboard mapping, mouse gestures or multi-touch).. It also
     handles device configuration. mpi@ did a simple libinput port back in 2015,
     and rsadowski improved it a bit in 2022 and matthieu@ also implemented some
     missing bits. More work is needed, especially to support multiple devices
     and fancy pointer accelerat. Keyboard mapping also needs some help.

## Available ports

All needed ports are now committed in the OpenBSD ports tree. They can be used
to build and install the packages.

### sysutils/seatd

The original project in on [Source Hut](https://git.sr.ht/~kennylevinsen/seatd)

The [OpenBSD port](https://gitlab.tetaneutral.net/mherrb/seatd) is very minimal
but enough for now. TODO: make it more complete WRT VT switching, using fbtab
and some sort of session management.

### wayland/libinput-openbsd

This is the port providing
[libopeninput](https://github.com/sizeofvoid/libopeninput), the
libinput port to OpenBSD maintained by rsadowski@, based on the
original work of mpi@ and additions for proper events translation (for
mouse buttons and keyboard) so that the input works in a usable way in
Wayland.

### sysutils/libevdev-openbsd

[This](https://gitlab.tetaneutral.net/mherrb/libevdev-openbsd.git) is a
stripped-down version of libevdev, providing just the few functions to handle
name to symbol conversions that are used by most Wayland applications.

### sysutils/libdisplay-info and graphics/libliftoff

Those two small helper libraries build of of the box on OpenBSD.

### wayland/xwayland

This is a straightforward port of [the upstream
release](https://gitlab.freedesktop.org/xorg/xwayland).

### wayland/wlroots

A version of [wlroots](https://gitlab.freedesktop.org/wlroots/wlroots) that has
been [patched for OpenBSD](https://gitlab.freedesktop.org/mherrb/wlroots.git).
The wscons backend code can dropped for now. I'm not sure if it will ever be
possible to have Wayland applications running without libinput (but that's the
goal of this backend).

### wayland/havoc

[Havoc](https://github.com/ii8/havoc) is the simplest terminal emulator
application for Wayland that I could find and that builds on OpenBSD with
minimal changes.

### wayland/foot
[Foot](https://codeberg.org/dnkl/foot) is a more complete terminal emulator.
Porting it required adding uchar.h to base, and a few ports (devel/tllist,
devel/libstdthreads, graphics/fcft) which are also used by other not yet ported
Wayland applications.

### wayland/sway

[Sway](https://github.com/swaywm/sway) is a tiled Wayland compositor,
compatible with i3, [ported to OpenBSD](https://github.com/mherrb/sway.git)

### wayland/dmenu-wayland
[dmenu-wayland](https://github.com/nyyManni/dmenu-wayland) is a dynamic menu
for sway and other wlroots based compositors, similar to dmenu for X11.

### wayland/wev

[Wev](https://git.sr.ht/~sircmpwn/wev) is a Wayland event viewer, similar to
[xev(1)](https://man.openbsd.org/xev)

### wayland/swayimg

[swayimg](https://github.com/artemsen/swayimg) is an image viewer for Wayland
that builds on OpenBSD

### wayland/swaybg

[swaybg](https://github.com/swaywm/swaybg/) is a small utility to set the
background for wlroots based compositors, including sway.

### Default cursor theme

Wayland doesn't provide cursors by itself. So one needs to install the
`gnome-icon-theme` package or any other package providing a default theme.
Because of the cursor path mentionned above, link /usr/local/share/icons to
`~/.icons` for now to get cursors.

Note: swaybar used to segfault if it's missing a cursor, it should be fixed in
the current port

### Fonts

Wayland is using `fontconfig`. So it can use any fonts installed via `pkg_add`
swaybar expects the terminus font to be available.

## Running Wayland

 * The script below (`startwl`) sets all the environment needed:

       #! /bin/ksh
       export XDG_RUNTIME_DIR=/tmp/run/$(id -u)
       if [ ! -d $XDG_RUNTIME_DIR ]; then
           mkdir -m 700 -p $XDG_RUNTIME_DIR
       fi
       export WLR_DRM_DEVICES=/dev/dri/card0
       export LIBSEAT_BACKEND=noop
       export XCURSOR_THEME=redglass
       exec sway $*

 * Use LWIN-Enter to launch the default terminal emulator (havoc)

### X Applications

Sway starts Xwayland automatically if an application needs X

It can also be started manually, but not in rootless mode (this is a Wayland
security feature). X applications work in the Xwayland in windowed mode, but
OpenGL X applications crash (probably because of mismatched Mesa versions in my
builds FIXME

## More work to do

### More complete libinput implementation

 - Multiple devices and hotplugging
 - Explicit tablets and touchscreens support
 - Pointer acceleration profiles

### Gtk applications

Simple patches allows to build gtk+3 and gtk+4 with wayland support enabled.
gtk3-demo works, built against the patched version.

Note that both emacs and mozilla-firefox work, but still use Xwayland. The
ports need some plist and lib-depends patches once wayland support is enabled
in gtk+3/4.

So far gtk-demos (Gtk-4) fails to start, it still tries to connect to an X
serer and segfault. FIXME

### Qt applications

Qt 5 and 6 are normally built with Wayland support. I tried keepassxc(1) (Qt5)
which could'nt connect to the compositor. qt6/qtbase doesn't build on my system
from some reason. FIXME


### swaylock

To get a screen locker, swaylock needs to be tought about BSD auth to replace
PAM.

### Pledge and Unveil

None of the above currenty implement pledge() or unveil() support, nor any
other from of sandboxing afaict. This could be looked at at some point.

## Known issues

* Sway sometimes crashes on startup because of a use after free error happening
  somewhere in fontconfig.
* Sway will crash the kernel during startup from time to time. I don't know if
  it's a problem specific to the dri driver for the Intel iris (12th gen) GPU in
  my test laptop or a general bug. TODO: test on a machine with a serial console
  to get a backtrace if possible.

-----
Last modified: 2023-09-02T13:25:23
