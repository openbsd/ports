# $OpenBSD: Makefile,v 1.2 2013/02/08 02:55:16 bcallah Exp $

COMMENT =		3D light cycle game

DISTNAME =		armagetronad-0.2.8.3.2.src
PKGNAME =		${DISTNAME:S/.src//}
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		http://armagetronad.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB +=		GL GLU SDL SDL_image SDL_mixer c jpeg m png pthread
WANTLIB +=		stdc++ xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=armagetronad/}

MODULES =		converters/libiconv
BUILD_DEPENDS =		shells/bash
LIB_DEPENDS =		devel/sdl-image \
			devel/sdl-mixer \
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
