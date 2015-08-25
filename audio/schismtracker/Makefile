# $OpenBSD: Makefile,v 1.4 2015/08/25 13:18:24 sthen Exp $

COMMENT =	free module tracker editor and player
DISTNAME =	schismtracker-20150425
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	audio x11
REVISION =	0

HOMEPAGE =	http://schismtracker.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL X11 Xext Xv c m pthread

MASTER_SITES =	http://mirrors.nycbug.org/pub/distfiles/

MODULES =	lang/python

MODPY_RUNDEP =	No

LIB_DEPENDS =	devel/sdl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-mercurial

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/schismtracker ${PREFIX}/bin

.include <bsd.port.mk>
