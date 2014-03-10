# $OpenBSD: Makefile,v 1.10 2014/03/10 20:27:25 landry Exp $

COMMENT=	free Lemmings-like game

DISTNAME=	pingus-0.7.6
REVISION=0
CATEGORIES=	games x11

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://pingus.seul.org/
MASTER_SITES=	https://pingus.googlecode.com/files/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL SDL X11 Xi c m png pthread z
WANTLIB += SDL_mixer>=3 SDL_image>=2 boost_signals

MODULES=	converters/libiconv \
		devel/scons gcc4
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

LIB_DEPENDS=	devel/sdl-mixer \
		devel/sdl-image \
		devel/boost

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/pingus/pingus_main.cpp

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
