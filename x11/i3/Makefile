# $OpenBSD: Makefile,v 1.2 2009/09/14 17:19:29 naddy Exp $

COMMENT =	improved dynamic tiling window manager

DISTNAME =	i3-3.c
PKGNAME =	i3-3.3p0
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
