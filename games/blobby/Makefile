# $OpenBSD: Makefile,v 1.1.1.1 2012/10/27 07:12:45 bentley Exp $

COMMENT =		volleyball game with online play

V =			1.0rc3
DISTNAME =		blobby2-linux-${V}
PKGNAME =		blobby-${V}

CATEGORIES =		games

HOMEPAGE =		http://blobby.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB +=		GL GLU ICE SDL SM X11 Xext c m physfs pthread stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=blobby/}

MODULES =		devel/cmake
LIB_DEPENDS =		devel/sdl \
			devel/physfs

WRKDIST =		${WRKDIR}/blobby-${V}

.include <bsd.port.mk>
