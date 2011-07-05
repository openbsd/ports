# $OpenBSD: Makefile,v 1.1.1.1 2011/07/05 07:50:33 ajacoutot Exp $

COMMENT =		open source reimplementation of the original X-Com
DISTNAME =		openxcom-20110404
CATEGORIES =		games x11

HOMEPAGE =		http://openxcom.ninex.info/
MAINTAINER =		Antti Harri <iku@openbsd.fi>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += SDL SDL_gfx SDL_mixer c m pthread stdc++ yaml-cpp

MASTER_SITES =		http://kameli.openbsd.fi/dist/

RUN_DEPENDS =		audio/timidity
LIB_DEPENDS =		devel/sdl-gfx \
			devel/sdl-mixer \
			devel/yaml-cpp

MAKE_ENV =		CXX=${CXX} CXXFLAGS="${CXXFLAGS}"
USE_GMAKE =		Yes
NO_REGRESS =		Yes
WRKSRC =		${WRKDIST}/src

post-extract:
	${SUBST_CMD} -c ${FILESDIR}/wrapper ${WRKDIST}/bin/wrapper

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/bin/openxcom ${PREFIX}/bin/openxcom-bin
	${INSTALL_SCRIPT} ${WRKDIST}/bin/wrapper ${PREFIX}/bin/openxcom
	${INSTALL_DATA_DIR} ${PREFIX}/share/openxcom
	cd ${WRKDIST}/bin && find DATA USER | pax -rw ${PREFIX}/share/openxcom

.include <bsd.port.mk>
