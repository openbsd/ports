# $OpenBSD: Makefile,v 1.2 2009/08/11 08:42:07 ajacoutot Exp $

COMMENT =		keep X clipboard and cutbuffer in sync

DISTNAME =		autocutsel-0.9.0
PKGNAME =		${DISTNAME}p0

CATEGORIES =		x11

HOMEPAGE =		http://www.nongnu.org/autocutsel/

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xt c \
			pthread-stubs xcb

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=autocutsel/}

USE_X11 =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/autocutsel
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/autocutsel

.include <bsd.port.mk>
