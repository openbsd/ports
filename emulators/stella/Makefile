# $OpenBSD: Makefile,v 1.32 2018/10/24 14:28:02 sthen Exp $

COMMENT =		Atari 2600 VCS emulator

V =			5.1.3
DISTNAME =		stella-$V
CATEGORIES =		emulators
EXTRACT_SUFX =		-src.tar.xz
WRKDIST =		${WRKDIR}/${DISTNAME}
REVISION =		0

HOMEPAGE =		https://stella-emu.github.io/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		${COMPILER_LIBCXX} c m z pthread SDL2 png

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://github.com/stella-emu/stella/releases/download/$V/

LIB_DEPENDS =		devel/sdl2 \
			graphics/png

CXXFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include
LDFLAGS += 		-L${LOCALBASE}/lib

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--with-libpng-prefix=${LOCALBASE}/lib

USE_GMAKE =		Yes

NO_TEST =		Yes

DOCSBASE =		${WRKDIST}/docs
HTMLDOCS =		${DOCSBASE}/*.html
HTMLGRAPHICS =		${DOCSBASE}/graphics/*.png
DOCSDIR =		${PREFIX}/share/doc/stella

do-install:
	${INSTALL_PROGRAM}	${WRKDIST}/stella ${PREFIX}/bin

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${HTMLDOCS} ${DOCSDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}/graphics
	${INSTALL_DATA} ${HTMLGRAPHICS} ${DOCSDIR}/graphics/

.include <bsd.port.mk>
