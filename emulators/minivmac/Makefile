ONLY_FOR_ARCHS =	i386 amd64 powerpc

COMMENT =		early macintosh emulator

V =			36.04
REVISION =		4

DISTNAME =		minivmac-${V}

CATEGORIES =		emulators

HOMEPAGE =		https://gryphel.com/c/minivmac/

WANTLIB =		X11 c sndio

# GPLv2
PERMIT_PACKAGE =	Yes

SITES =			https://www.gryphel.com/d/minivmac/minivmac-${V}/

EXTRACT_SUFX =		.src.tgz

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c
USE_GMAKE =		Yes

RUN_DEPENDS =		devel/desktop-file-utils

WRKDIST =		${WRKDIR}/minivmac

ALL_TARGET =		minivmac

SETUP_FLAGS-amd64 = 	-t ob64
SETUP_FLAGS-i386 = 	-t obsd
SETUP_FLAGS-powerpc = 	-t obsd -cpu ppc

FLAVORS = 		ii m128k
FLAVOR ?=		

MODEL = 		-m Plus
.if ${FLAVOR:Mii}
MODEL = 		-m II
SUFFIX = 		-${FLAVOR}
.elif ${FLAVOR:Mm128k}
MODEL =			-m 128K
SUFFIX =		-${FLAVOR}
.endif

FULLPKGNAME =		minivmac${SUFFIX}-${V}
SUBST_VARS =		SUFFIX

post-extract:
	cp ${FILESDIR}/SGLUSNIO.h ${WRKSRC}/src

do-gen:
	cd ${WRKSRC}; cc setup/tool.c -o setup_t && \
		./setup_t ${SETUP_FLAGS-${MACHINE_ARCH}} ${MODEL} > gen && \
		sh ./gen

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/minivmac ${PREFIX}/bin/minivmac${SUFFIX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/src/ICONAPPW.ico \
		${PREFIX}/share/pixmaps/minivmac${SUFFIX}.ico

	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${FILESDIR}/minivmac${SUFFIX}.desktop \
		${PREFIX}/share/applications/minivmac${SUFFIX}.desktop

.include <bsd.port.mk>
