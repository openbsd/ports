# $OpenBSD: Makefile.inc,v 1.1.1.1 2018/01/08 19:24:31 bcallah Exp $

CATEGORIES ?=	x11

MAINTAINER ?=	Kaashif Hymabaccus <kaashif@kaashif.co.uk>

GH_ACCOUNT ?=	wmutils

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c xcb xcb-util

MAKE_FLAGS =	LDFLAGS="-L${X11BASE}/lib -lxcb -lxcb-util" \
		CFLAGS="${CFLAGS} -I${X11BASE}/include"

NO_TEST ?=	Yes
