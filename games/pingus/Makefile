# $OpenBSD: Makefile,v 1.8 2013/06/04 18:41:44 naddy Exp $

COMMENT=	free Lemmings-like game

DISTNAME=	pingus-0.7.2
REVISION =	0
CATEGORIES=	games x11

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://pingus.seul.org/
MASTER_SITES=	${HOMEPAGE}files/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL X11 Xi c m png pthread pthread-stubs xcb stdc++ z
WANTLIB += SDL_mixer>=3 SDL_image>=2 boost_signals

MODULES=	converters/libiconv \
		devel/scons

LIB_DEPENDS=	devel/sdl-mixer \
		devel/sdl-image \
		devel/boost

USE_GROFF =	Yes
NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/pingus_main.cpp ${WRKSRC}/doc/pingus.6

do-configure:
	cd ${WRKSRC} && ${MODSCONS_BIN} configure \
		${MODSCONS_ENV} \
		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LINKFLAGS="-L${LOCALBASE}/lib -lz -L${X11BASE}/lib" \
		with_xinput=1 \
		with_linuxusbmouse=0 \
		with_wiimote=0 \
		with_linuxevdev=0

do-build:
	@${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share{,/doc}/pingus
	${INSTALL_PROGRAM} ${WRKSRC}/pingus ${PREFIX}/bin/
	cd ${WRKSRC}/data && pax -rw * ${PREFIX}/share/pingus/
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/pingus/
	${INSTALL_MAN} ${WRKSRC}/doc/pingus.6 ${PREFIX}/man/man6/

.include <bsd.port.mk>
