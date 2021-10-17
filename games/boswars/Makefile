# $OpenBSD: Makefile,v 1.27 2021/10/17 12:19:12 sthen Exp $

COMMENT=	real-time strategy game

V=		2.7
DISTNAME=	boswars-${V}-src
PKGNAME=	boswars-${V}
CATEGORIES=	games x11
MASTER_SITES=	http://www.boswars.org/dist/releases/
REVISION=	2

HOMEPAGE=	http://www.boswars.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB +=	GL SDL X11 c m ogg png pthread ${COMPILER_LIBCXX} theora vorbis z
WANTLIB +=	${MODLUA_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	devel/scons \
		lang/lua
MODSCONS_FLAGS=	CPPPATH="${LOCALBASE}/include ${X11BASE}/include" \
		opengl=1

BUILD_DEPENDS=	devel/sdl-image \
		graphics/optipng
LIB_DEPENDS=	devel/sdl \
		multimedia/libtheora \
		audio/libvorbis \
		graphics/png \
		${MODLUA_LIB_DEPENDS}

NO_TEST=	Yes

DATA_DIR=	campaigns graphics intro languages maps patches scripts sounds units

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/SConstruct \
		${WRKSRC}/engine/include/stratagus.h
.for f in maps/antarticum.map/terrain.png graphics/ui/ui_*.png \
		units/radar/radar*.png units/tree*/tree*.png
	optipng -force -fix ${WRKSRC}/${f}
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/boswars
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/boswars/html/scripts
	${INSTALL_PROGRAM} ${WRKSRC}/build/boswars-release \
	    ${PREFIX}/bin/boswars
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/boswars/html
	${INSTALL_DATA} ${WRKSRC}/doc/scripts/{*.html,*.py} ${PREFIX}/share/doc/boswars/html/scripts
.for i in ${DATA_DIR}
	cp -R ${WRKSRC}/${i} ${PREFIX}/share/boswars
.endfor
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/boswars

.include <bsd.port.mk>
