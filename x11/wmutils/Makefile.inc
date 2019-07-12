# $OpenBSD: Makefile.inc,v 1.2 2019/07/12 20:51:24 sthen Exp $

CATEGORIES ?=	x11

MAINTAINER ?=	Kaashif Hymabaccus <kaashif@kaashif.co.uk>

GH_ACCOUNT ?=	wmutils

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c xcb xcb-util

MAKE_FLAGS =	LDFLAGS="-L${X11BASE}/lib -lxcb -lxcb-util" \
		CFLAGS="${CFLAGS} -I${X11BASE}/include"

NO_TEST ?=	Yes
