# $OpenBSD: Makefile,v 1.6 2016/11/07 10:51:36 sthen Exp $

COMMENT =		3D light cycle game

DISTNAME =		armagetronad-0.2.8.3.3.src
REVISION =		0
PKGNAME =		${DISTNAME:S/.src//}

CATEGORIES =		games

HOMEPAGE =		http://armagetronad.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += GL GLU SDL SDL_image c iconv jpeg lzma m png pthread stdc++
WANTLIB += xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=armagetronad/}

BUILD_DEPENDS =		shells/bash
LIB_DEPENDS =		converters/libiconv \
			devel/sdl-image \
			textproc/libxml

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-games=no \
			--enable-uninstall=no \
			--disable-useradd \
			--disable-initscripts \
			--disable-sysinstall \
			--disable-binreloc

WRKDIST =		${WRKDIR}/${DISTNAME:S/.src//}

.include <bsd.port.mk>
