# $OpenBSD: Makefile,v 1.7 2013/11/25 19:54:03 landry Exp $

BROKEN-alpha =	OOM on XcomRuleset.cpp
COMMENT =		open source reimplementation of the original X-Com
DISTNAME =		openxcom-20120217
REVISION =		0
CATEGORIES =		games x11

HOMEPAGE =		http://openxcom.ninex.info/
MAINTAINER =		Antti Harri <iku@openbsd.fi>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL SDL_gfx SDL_mixer c m pthread stdc++ yaml-cpp

MASTER_SITES =		http://openbsd.fi/dist/

MODULES =		devel/cmake

RUN_DEPENDS =		audio/timidity
LIB_DEPENDS =		devel/sdl-gfx \
			devel/sdl-mixer \
			devel/yaml-cpp

CONFIGURE_ARGS =	-DDEV_BUILD=Off

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/Engine/CrossPlatform.cpp

post-patch:
	find "${WRKSRC}" \( -name '*.h' -o -name '*.cpp' \) -print0 | \
		xargs -0r perl -pi -e 's,yaml.h,yaml-cpp/yaml.h,'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openxcom
	cd ${WRKDIST}/bin/data && find . | pax -rw ${PREFIX}/share/openxcom

.include <bsd.port.mk>
