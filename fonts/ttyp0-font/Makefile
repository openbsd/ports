COMMENT =		monospace bitmap screen fonts

PKGNAME =		ttyp0-2.1
REVISION =		0
DISTNAME =		uw-${PKGNAME}
CATEGORIES =		fonts x11

HOMEPAGE =		https://people.mpi-inf.mpg.de/~uwe/misc/uw-ttyp0/

MAINTAINER =		Christopher Zimmermann <chrisz@openbsd.org>

# similar to 2-clause BSD with name restrictions
PERMIT_PACKAGE =	Yes

SITES =			https://people.mpi-inf.mpg.de/~uwe/misc/uw-ttyp0/

USE_GMAKE =		Yes
BUILD_DEPENDS =		sysutils/bdfresize
MAKE_FLAGS =		GEN_OTB=1 \
			GEN_PCF=1

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--otbdir=${PREFIX}/share/fonts/uw-ttyp0 \
			--pcfdir=${PREFIX}/share/fonts/uw-ttyp0
NO_TEST =		Yes
USE_X11 =		Yes

FLAVORS =		sq ct nbs nbd sz dz sc
FLAVOR ?=

.if ${FLAVOR:Msq}
# straight accent and apostrophe
VARIANTS +=	"COPYTO PApostropheStraight PApostropheAscii"
VARIANTS +=	"COPYTO AccGraveStraight AccGraveAscii"
.endif

.if ${FLAVOR:Msz} && ${FLAVOR:Mdz}
ERRORS +=	"Fatal: Select at most one of sz and dz"
.elif ${FLAVOR:Msz}
# slashed zero
VARIANTS +=	"COPYTO Digit0Slashed Digit0"
.elif ${FLAVOR:Mdz}
# dotted zero
VARIANTS +=	"COPYTO Digit0Dotted Digit0"
.endif

.if ${FLAVOR:Mct}
# centered ASCII tilde
VARIANTS +=	"COPYTO MTilde AccTildeAscii"
.endif

.if ${FLAVOR:Mnbs} && ${FLAVOR:Mnbd}
ERRORS +=	"Fatal: Select at most one of nbs and nbd"
.elif ${FLAVOR:Mnbs}
#- display no-break space like normal space
VARIANTS +=	"COPYTO Space SpaceNoBreak"
.elif ${FLAVOR:Mnbd}
#- display no-break space with a dot
VARIANTS +=	"COPYTO DVisibleSpace SpaceNoBreak"
.endif

.if ${FLAVOR:Msc}
# Serbian rather than eastern Cyrillic italics
VARIANTS +=	"COPYTO CySmlBeSrb CySmlBe"
VARIANTS +=	"IFFONT -I- COPYTO CySmlGheSrb CySmlGhe"
VARIANTS +=	"IFFONT -I- COPYTO CySmlDeSrb CySmlDe"
VARIANTS +=	"IFFONT -I- COPYTO CySmlPeSrb CySmlPe"
VARIANTS +=	"IFFONT -I- COPYTO CySmlTeSrb CySmlTe"
VARIANTS +=	"IFFONT -I- COPYTO CySmlGheAcuteMcd CySmlGheAcute"
.endif

post-configure:
	for var in ${VARIANTS}; do \
		echo $$var >>${WRKSRC}/VARIANTS.dat; \
	done

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,fonts}/uw-ttyp0
	cd ${WRKSRC}/doc; ${INSTALL_DATA} Charset *.txt FAQ.html \
		DesignNotes.html ${PREFIX}/share/doc/uw-ttyp0

.include <bsd.port.mk>
