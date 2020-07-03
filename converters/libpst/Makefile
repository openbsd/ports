# $OpenBSD: Makefile,v 1.61 2020/07/03 21:12:36 sthen Exp $

BROKEN-hppa=		linking .libs/python-libpst.o fails

COMMENT-main=		read and convert Microsoft Outlook mail files
COMMENT-python=		python interface to libpst

DISTNAME=		libpst-0.6.75

REVISION-python=	0

SHARED_LIBS +=  pst                  3.0      # 5.17

PKGNAME-main=		${DISTNAME}
PKGNAME-python=		py${MODPY_MAJOR_VERSION}-${DISTNAME}

CATEGORIES=		converters mail

HOMEPAGE=		http://www.five-ten-sg.com/libpst/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += m pthread z ${COMPILER_LIBCXX}

WANTLIB-main += ${WANTLIB} iconv intl 
WANTLIB-main += bz2 c expat ffi fontconfig freetype gd gio-2.0
WANTLIB-main += glib-2.0 gobject-2.0 gsf-1 jpeg pcre png zstd
WANTLIB-main += tiff webp xml2 z m pthread ${COMPILER_LIBCXX} lzma

WANTLIB-python += ${WANTLIB} iconv
WANTLIB-python += pst boost_python3-mt

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		http://www.five-ten-sg.com/libpst/packages/

MULTI_PACKAGES=		-main -python

MODULES=		lang/python

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=		graphics/ImageMagick
RUN_DEPENDS-main=	graphics/ImageMagick
LIB_DEPENDS-main=	devel/libgsf \
			graphics/gd

LIB_DEPENDS-python=	${BASE_PKGPATH} \
			devel/boost

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-pst-debug \
			--disable-static-tools \
			--enable-libpst-shared
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON_LDFLAGS="$$(pkg-config --libs python${MODPY_MAJOR_VERSION})" \
			PYTHON_BIN="python${MODPY_VERSION}"

# XXX eats all memory
.if ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH} == "hppa"
CFLAGS+=	-O0
.endif

DEBUG_PACKAGES=		${BUILD_PACKAGES}

FAKE_FLAGS=		htmldir="${PREFIX}/share/doc/libpst/" \
			htmldeveldir="${PREFIX}/share/doc/libpst/devel/"

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
