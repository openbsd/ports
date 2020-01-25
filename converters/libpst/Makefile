# $OpenBSD: Makefile,v 1.58 2020/01/25 05:54:20 ajacoutot Exp $

BROKEN-hppa=		linking .libs/python-libpst.o fails

COMMENT-main=		read and convert Microsoft Outlook mail files
COMMENT-python=		python interface to libpst

DISTNAME=		libpst-0.6.74

SHARED_LIBS +=  pst                  3.0      # 5.16

PKGNAME-main=		${DISTNAME}
PKGNAME-python=		py-${DISTNAME}

CATEGORIES=		converters mail

HOMEPAGE=		http://www.five-ten-sg.com/libpst/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

cWANTLIB += m pthread z ${COMPILER_LIBCXX}

WANTLIB-main += ${cWANTLIB} iconv intl 
WANTLIB-main += bz2 c expat ffi fontconfig freetype gd gio-2.0
WANTLIB-main += glib-2.0 gobject-2.0 gsf-1 jpeg pcre png zstd
WANTLIB-main += tiff webp xml2 z m pthread ${COMPILER_LIBCXX} lzma

WANTLIB-python += ${cWANTLIB} iconv
WANTLIB-python += pst boost_python

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${HOMEPAGE}/packages/ \
			https://distfiles.nl/

MULTI_PACKAGES=		-main -python

MODULES=		lang/python

BUILD_DEPENDS=		graphics/ImageMagick
RUN_DEPENDS-main=	graphics/ImageMagick
LIB_DEPENDS-main=	devel/libgsf \
			graphics/gd

LIB_DEPENDS-python=	${BASE_PKGPATH} \
			devel/boost

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-pst-debug \
			--disable-static-tools \
			--enable-libpst-shared
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${MODPY_INCDIR}" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON_LDFLAGS="-L${LOCALBASE}/lib -lpython${MODPY_VERSION} -lm" \
			PYTHON_BIN="python${MODPY_VERSION}"

# XXX eats all memory
.if ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH} == "hppa"
CFLAGS+=	-O0
.endif

DEBUG_PACKAGES=		${BUILD_PACKAGES}

FAKE_FLAGS+=		htmldir="${PREFIX}/share/doc/libpst/" \
			htmldeveldir="${PREFIX}/share/doc/libpst/devel/"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
