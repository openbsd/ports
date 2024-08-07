COMMENT =	interpreter for BBC Basic (Basic VI)

V =		1.23.3
DISTNAME =	MatrixBrandy-${V}
PKGNAME =	brandy-${V}
EXTRACT_SUFX =	.tar.xz
SITES =	http://brandy.matrixnetwork.co.uk/releases/

CATEGORIES =	lang

HOMEPAGE =	http://brandy.matrixnetwork.co.uk/
MAINTAINER =	Jag Talon <jag@aangat.lahat.computer>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += SDL X11 c m pthread

LIB_DEPENDS +=	devel/sdl
USE_GMAKE =	Yes

# since we disable git
CFLAGS +=	-DBRANDY_RELEASE

# disable version checking at startup
CFLAGS +=	-DBRANDY_NOVERCHECK

CFLAGS +=	`sdl-config --cflags` -DDEFAULT_IGNORE -Wall
LDFLAGS +=	`sdl-config --libs` -lm -pthread -L${X11BASE}/lib/ -lX11

MAKE_FLAGS =	CC="${CC}" LD="${CC}" LIBS="${LDFLAGS}" CFLAGS="${CFLAGS}"
MAKE_FILE =	makefile

NO_TEST =	Yes

do-build:
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f makefile -C "${WRKSRC}" \
		${MAKE_FLAGS} CFLAGS="${CFLAGS} -DUSE_SDL" all
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f makefile.text -C "${WRKSRC}" \
		${MAKE_FLAGS} CFLAGS="${CFLAGS} -DNO_SDL" clean all

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tbrandy ${PREFIX}/bin/brandy
	${INSTALL_PROGRAM} ${WRKSRC}/brandy ${PREFIX}/bin/brandy-sdl

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/brandy
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/brandy

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/brandy
	${INSTALL_DATA} ${WRKSRC}/examples/[!Mode7]* ${PREFIX}/share/examples/brandy

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/brandy/Mode7
	${INSTALL_DATA} ${WRKSRC}/examples/Mode7/* ${PREFIX}/share/examples/brandy/Mode7

.include <bsd.port.mk>
