# $OpenBSD: Makefile,v 1.5 2017/04/10 11:45:28 sthen Exp $

COMMENT =		volleyball game with online play

V =			1.0rc3
DISTNAME =		blobby2-linux-${V}
PKGNAME =		blobby-${V}

CATEGORIES =		games

HOMEPAGE =		http://blobby.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		GL GLU ICE SDL SM X11 Xext c m physfs pthread ${LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=blobby/}

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/boost \
			archivers/zip
LIB_DEPENDS =		devel/sdl \
			devel/physfs

WRKDIST =		${WRKDIR}/blobby-${V}

.include <bsd.port.mk>
