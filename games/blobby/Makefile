# $OpenBSD: Makefile,v 1.10 2019/07/12 20:46:15 sthen Exp $

COMMENT =		volleyball game with online play

V =			1.0rc3
DISTNAME =		blobby2-linux-${V}
PKGNAME =		blobby-${V}
REVISION =		2

CATEGORIES =		games

HOMEPAGE =		http://blobby.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB +=		GL GLU ICE SDL SM X11 Xext c m physfs pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=blobby/}

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/boost \
			archivers/zip
LIB_DEPENDS =		devel/sdl \
			devel/physfs

WRKDIST =		${WRKDIR}/blobby-${V}

.include <bsd.port.mk>
