# $OpenBSD: Makefile,v 1.2 2019/07/12 21:02:29 sthen Exp $

COMMENT =	fast floating window manager
DISTNAME = 	2bwm-0.3
CATEGORIES =	x11
HOMEPAGE =	https://github.com/venam/2bwm

MAINTAINER = 	Kaashif Hymabaccus <kaashif@kaashif.co.uk>

# ISC
PERMIT_PACKAGE = Yes

WANTLIB = 	c xcb xcb-ewmh xcb-icccm xcb-keysyms xcb-randr xcb-xrm

RUN_DEPENDS = 	x11/dmenu

MASTER_SITES = 	http://git.nixers.net/releases/
EXTRACT_SUFX = 	.tar.bz2

MAKE_ENV =	LDFLAGS=-L${X11BASE}/lib \
		X11_INCLUDE=${X11BASE}/include
NO_TEST = 	Yes
CFLAGS +=	-std=c99

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/{2bwm,hidden} ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKBUILD}/2bwm.man ${PREFIX}/man/man1/2bwm.1
	${INSTALL_MAN} ${WRKBUILD}/hidden.man ${PREFIX}/man/man1/hidden.1

.include <bsd.port.mk>
