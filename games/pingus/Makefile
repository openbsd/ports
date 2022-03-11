COMMENT=	free Lemmings-like game

DISTNAME=	pingus-0.7.6
REVISION=	6
CATEGORIES=	games x11

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	https://pingus.seul.org/
MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=pingus/}

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += GL SDL X11 Xi c iconv m png pthread z
WANTLIB += SDL_mixer>=3 SDL_image>=2 ${COMPILER_LIBCXX}

MODULES=	devel/scons

COMPILER =	base-clang ports-gcc

BUILD_DEPENDS=	devel/boost
LIB_DEPENDS=	converters/libiconv \
		devel/sdl-mixer \
		devel/sdl-image

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/pingus/pingus_main.cpp

pre-patch:
	2to3 -w ${WRKSRC}/SConscript

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} \
		${MODSCONS_ENV} \
		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LINKFLAGS="-L${LOCALBASE}/lib -lz -L${X11BASE}/lib" \
		with_xinput=1 \
		with_linuxusbmouse=0 \
		with_wiimote=0 \
		with_linuxevdev=0

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share{,/doc}/pingus
	${INSTALL_PROGRAM} ${WRKSRC}/build/pingus ${PREFIX}/bin/
	cd ${WRKSRC}/data && pax -rw * ${PREFIX}/share/pingus/
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/pingus/
	${INSTALL_MAN} ${WRKSRC}/doc/man/pingus.6 ${PREFIX}/man/man6/

.include <bsd.port.mk>
