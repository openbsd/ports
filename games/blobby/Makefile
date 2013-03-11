# $OpenBSD: Makefile,v 1.4 2013/03/11 11:07:38 espie Exp $

COMMENT =		volleyball game with online play

V =			1.0rc3
DISTNAME =		blobby2-linux-${V}
PKGNAME =		blobby-${V}

CATEGORIES =		games

HOMEPAGE =		http://blobby.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		GL GLU ICE SDL SM X11 Xext c m physfs pthread stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=blobby/}

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/boost \
			archivers/zip
LIB_DEPENDS =		devel/sdl \
			devel/physfs

WRKDIST =		${WRKDIR}/blobby-${V}

.include <bsd.port.mk>
