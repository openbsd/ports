# $OpenBSD: Makefile,v 1.28 2017/07/26 22:45:20 sthen Exp $

COMMENT =		Atari 2600 VCS emulator

V =			3.9
DISTNAME =		stella-${V}
REVISION =		2
CATEGORIES =		emulators
DISTFILES =		${DISTNAME}-src.tar.gz

HOMEPAGE =		https://stella-emu.github.io/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c ${COMPILER_LIBCXX} m z pthread SDL>=1.2 png

MASTER_SITES =		https://github.com/stella-emu/stella/releases/download/release-${V}/

LIB_DEPENDS =		devel/sdl \
			graphics/png

CXXFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include
LDFLAGS += 		-L${LOCALBASE}/lib

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--disable-gl

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
