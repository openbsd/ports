# $OpenBSD: Makefile,v 1.1.1.1 2009/09/02 19:26:17 landry Exp $

COMMENT =	improved dynamic tiling window manager

DISTNAME =	i3-3.c
PKGNAME =	i3-3.3
CATEGORIES =	x11

EXTRACT_SUFX =	.tar.bz2
HOMEPAGE = 	http://i3.zekjur.net/
MASTER_SITES =	${HOMEPAGE}downloads/
MAINTAINER =	Bapt <baptiste.daroussin@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

WANTLIB =	X11 c m xcb xcb-atom xcb-aux xcb-event \
		xcb-icccm xcb-keysyms xcb-property xcb-xinerama

MODULES =	converters/libiconv
LIB_DEPENDS =	ev::devel/libev
RUN_DEPENDS =	::x11/dmenu

USE_GMAKE =	Yes
USE_X11 =	Yes

pre-configure:
		${SUBST_CMD} ${WRKSRC}/i3.config ${WRKSRC}/src/config.c

.include <bsd.port.mk>
