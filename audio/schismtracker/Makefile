# $OpenBSD: Makefile,v 1.2 2015/07/01 00:07:08 bcallah Exp $

COMMENT =	free module tracker editor and player
DISTNAME =	schismtracker-20150425
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	audio x11

HOMEPAGE =	http://schismtracker.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL X11 Xext Xv c m pthread

MASTER_SITES =	http://mirrors.nycbug.org/pub/distfiles/

LIB_DEPENDS =	devel/sdl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-mercurial

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/schismtracker ${PREFIX}/bin

.include <bsd.port.mk>
