# $OpenBSD: Makefile,v 1.3 2020/05/15 19:57:34 bcallah Exp $

COMMENT =	open source retro-style 2D scrolling platform shooter game
DISTNAME =	gnukem-1.0.1
CATEGORIES =	games x11

HOMEPAGE =	https://djoffe.com/gnukem/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Dual licensed: MIT or GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL SDL_mixer c m

# Upstream data fetching is ugh...
MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

LIB_DEPENDS =	devel/sdl-mixer

USE_GMAKE =	Yes
ALL_TARGET =	default
MAKE_FLAGS =	CC="${CC}" CPP="${CXX}" \
		CXXFLAGS="${CXXFLAGS}"

NO_TEST =	Yes

# No install routine
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gnukem/data
	cd ${WRKSRC}/data && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/gnukem/data/{}" \;
	cd ${WRKSRC}/data && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/gnukem/data/{}" \;
	echo "#!/bin/sh\ncd ${TRUEPREFIX}/share/gnukem && ./davegnukem \"\$$@\"" >> ${WRKSRC}/gnukem.sh
	${INSTALL_PROGRAM} ${WRKSRC}/davegnukem ${PREFIX}/share/gnukem
	${INSTALL_SCRIPT} ${WRKSRC}/gnukem.sh ${PREFIX}/bin/davegnukem

.include <bsd.port.mk>
