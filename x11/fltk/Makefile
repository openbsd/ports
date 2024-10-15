# no libGL (toolchain issue)
NOT_FOR_ARCHS=	m88k

COMMENT=	Fast-Light Tool Kit

VER=		1.3.9
DISTNAME=	fltk-${VER}
EXTRACT_SUFX=	-source.tar.gz

CATEGORIES=	x11

# These all need to stay in sync.
.for l in fltk fltk_forms fltk_gl fltk_images
SHARED_LIBS+=	$l	9.0
.endfor

HOMEPAGE=	https://www.fltk.org/

# LGPLv2 with exceptions (see COPYING)
PERMIT_PACKAGE=	Yes

WANTLIB += GL GLU X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xinerama Xrender
WANTLIB += c fontconfig jpeg m png pthread z ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc base-gcc

SITES=		https://fltk.org/pub/fltk/${VER}/

LIB_DEPENDS=	graphics/jpeg \
		graphics/png

NO_TEST=	Yes
CONFIGURE_STYLE=autoconf no-autoheader
AUTOCONF_VERSION=2.71
CONFIGURE_ARGS=	--enable-shared \
		--enable-threads
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib" \
		FL_DSO_VERSION="${LIBfltk_VERSION}"
MAKE_FLAGS=	FL_DSO_VERSION="${LIBfltk_VERSION}"

pre-build:
	${SUBST_CMD} ${WRKSRC}/src/Fl_Preferences.cxx

post-install:
	rm ${PREFIX}/lib/lib*.so

.include <bsd.port.mk>
