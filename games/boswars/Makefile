COMMENT=	real-time strategy game

V=		2.8
DISTNAME=	boswars-${V}-src
PKGNAME=	boswars-${V}
CATEGORIES=	games x11
SITES=		https://www.boswars.org/dist/releases/

HOMEPAGE=	https://www.boswars.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL SDL X11 c m ogg png theora vorbis z
WANTLIB += ${MODLUA_WANTLIB}

COMPILER =	base-clang ports-gcc

MODULES=	lang/lua \
		lang/python

MODPY_RUNDEP=	No

LIB_DEPENDS=	devel/sdl \
		multimedia/libtheora \
		audio/libvorbis \
		graphics/png \
		${MODLUA_LIB_DEPENDS}

NO_TEST=	Yes

DATA_DIR=	campaigns graphics intro languages maps patches \
		scripts sounds units

pre-configure:
	${SUBST_CMD} ${WRKSRC}/engine/include/stratagus.h

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} ./make.py -j ${MAKE_JOBS} release \
		cc=${CXX} \
		cflags="${CXXFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
		ldflags="-L${LOCALBASE}/lib -L${X11BASE}/lib"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/boswars
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/boswars/html/scripts
	${INSTALL_PROGRAM} ${WRKSRC}/fbuild/release/boswars \
	    ${PREFIX}/bin/boswars
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/boswars/html
	${INSTALL_DATA} ${WRKSRC}/doc/scripts/{*.html,*.py} \
		${PREFIX}/share/doc/boswars/html/scripts
.for i in ${DATA_DIR}
	cp -R ${WRKSRC}/${i} ${PREFIX}/share/boswars
.endfor
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/boswars

.include <bsd.port.mk>
