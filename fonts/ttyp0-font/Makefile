COMMENT =		monospace bitmap screen fonts

PKGNAME =		ttyp0-1.3
DISTNAME =		uw-${PKGNAME}
CATEGORIES =		fonts x11

HOMEPAGE =		https://people.mpi-inf.mpg.de/~uwe/misc/uw-ttyp0/

MAINTAINER =		Christopher Zimmermann <chrisz@openbsd.org>

# similar to 2-clause BSD with name restrictions
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://people.mpi-inf.mpg.de/~uwe/misc/uw-ttyp0/

USE_GMAKE =		Yes
MAKE_FLAGS =		PCFDIR=${PREFIX}/share/fonts/uw-ttyp0

CONFIGURE_STYLE =	simple
NO_TEST =		Yes
USE_X11 =		Yes

FLAVORS =		sq ct nbs nbd sz
FLAVOR ?=

.if ${FLAVOR:Msq}
VARIANTS +=	"COPYTO AccStress PApostropheAscii"
VARIANTS +=	"COPYTO PAmComma AccGraveAscii"
.endif

.if ${FLAVOR:Msz}
VARIANTS +=	"COPYTO Digit0Slashed Digit0"
.endif

.if ${FLAVOR:Mct}
VARIANTS +=	"COPYTO MTilde AccTildeAscii"
.endif

.if ${FLAVOR:Mnbs} && ${FLAVOR:Mnbd}
ERRORS +=	"Fatal: Select at most one of nbs and nbd"
.elif ${FLAVOR:Mnbs}
VARIANTS +=	"COPYTO Space SpaceNoBreak"
.elif ${FLAVOR:Mnbd}
VARIANTS +=	"COPYTO DVisibleSpace SpaceNoBreak"
.endif

post-configure:
	for var in ${VARIANTS}; do \
		echo $$var >>${WRKSRC}/VARIANTS.dat; \
	done

post-build:
	mkdir ${WRKSRC}/genotb
	for bdf in ${WRKSRC}/genbdf/t0-*-uni.bdf; do \
		${X11BASE}/bin/fonttosfnt \
		  -o ${WRKSRC}/genotb/`basename $$bdf .bdf`.otb \
		  $$bdf; \
	done

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/uw-ttyp0
	${INSTALL_DATA} ${WRKSRC}/genotb/*.otb ${PREFIX}/share/fonts/uw-ttyp0

.include <bsd.port.mk>
