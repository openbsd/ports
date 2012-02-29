# $OpenBSD: Makefile,v 1.3 2012/02/29 08:25:32 ajacoutot Exp $

COMMENT =		open source reimplementation of the original X-Com
DISTNAME =		openxcom-20120217
CATEGORIES =		games x11

HOMEPAGE =		http://openxcom.ninex.info/
MAINTAINER =		Antti Harri <iku@openbsd.fi>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		SDL SDL_gfx SDL_mixer c m pthread stdc++ yaml-cpp

MASTER_SITES =		http://openbsd.fi/dist/

MODULES =		devel/cmake

RUN_DEPENDS =		audio/timidity
LIB_DEPENDS =		devel/sdl-gfx \
			devel/sdl-mixer \
			devel/yaml-cpp

CONFIGURE_ARGS =	-DDEV_BUILD=Off

NO_REGRESS =		Yes
VMEM_WARNING =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/Engine/CrossPlatform.cpp

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openxcom
	cd ${WRKDIST}/bin/data && find . | pax -rw ${PREFIX}/share/openxcom

.include <bsd.port.mk>
