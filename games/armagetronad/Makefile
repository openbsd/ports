# $OpenBSD: Makefile,v 1.10 2017/07/26 22:45:20 sthen Exp $

COMMENT =		3D light cycle game

DISTNAME =		armagetronad-0.2.8.3.4.src
PKGNAME =		${DISTNAME:S/.src//}
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		http://armagetronad.org/
MAINTAINER =		Brian Callahan <bcallah@devio.us>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += GL GLU SDL SDL_image c iconv jpeg lzma m png pthread ${COMPILER_LIBCXX}
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
