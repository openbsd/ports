# $OpenBSD: Makefile,v 1.2 2009/08/10 06:31:42 kili Exp $

COMMENT=	free Lemmings-like game

DISTNAME=	pingus-0.7.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games x11

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://pingus.seul.org/
MASTER_SITES=	${HOMEPAGE}files/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += SDL X11 Xi c m png pthread pthread-stubs xcb stdc++ z

MODULES=	converters/libiconv \
		devel/scons

LIB_DEPENDS=	SDL_mixer.>=3::devel/sdl-mixer \
		SDL_image.>=2::devel/sdl-image \
		boost_signals::devel/boost

USE_X11=	Yes
NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/pingus_main.cpp ${WRKSRC}/doc/pingus.6

do-configure:
	cd ${WRKSRC} && ${MODSCONS_BIN} configure \
		${MODSCONS_ENV} \
		CPPFLAGS="-I${LOCALBASE}/include \
			-I${X11BASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LINKFLAGS="-L${LOCALBASE}/lib -lz \
				-L${X11BASE}/lib" \
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
