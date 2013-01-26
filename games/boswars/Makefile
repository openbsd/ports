# $OpenBSD: Makefile,v 1.17 2013/01/26 09:14:35 sthen Exp $

COMMENT=	real-time strategy game

V=		2.6.1
DISTNAME=	boswars-${V}-src
PKGNAME=	boswars-${V}
REVISION=	3
CATEGORIES=	games x11

HOMEPAGE=	http://www.boswars.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.boswars.org/dist/releases/

WANTLIB=	GL X11 c m ogg pthread stdc++ z SDL>=7 ${MODLUA_WANTLIB}
WANTLIB +=	theora>=2 vorbis>=5 png>=5

MODULES=	devel/scons \
		lang/lua
MODSCONS_FLAGS=	CPPPATH="${CPPPATH} ${LOCALBASE}/include/libpng" \
		LIBS="-lm" \
		opengl=1
BUILD_DEPENDS=	devel/sdl-image
LIB_DEPENDS=	devel/sdl \
		multimedia/libtheora \
		audio/libvorbis \
		graphics/png \
		${MODLUA_LIB_DEPENDS}

NO_REGRESS=	Yes

DATA_DIR=	campaigns graphics intro maps languages scripts sounds units

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/SConstruct \
		${WRKSRC}/engine/include/stratagus.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/boswars ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/boswars
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/boswars/html/scripts
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/boswars/html
	${INSTALL_DATA} ${WRKSRC}/doc/scripts/{*.html,*.py} ${PREFIX}/share/doc/boswars/html/scripts
.for i in ${DATA_DIR}
	cp -R ${WRKSRC}/${i} ${PREFIX}/share/boswars
.endfor
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/boswars

.include <bsd.port.mk>
