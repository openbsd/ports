# $OpenBSD: Makefile,v 1.35 2014/03/26 18:36:16 ajacoutot Exp $

BROKEN-hppa=		linking .libs/python-libpst.o fails

COMMENT-main=		read and convert Microsoft Outlook mail files
COMMENT-python=		python interface to libpst

DISTNAME=		libpst-0.6.63
REVISION-main=		2
REVISION-python=	2

SHARED_LIBS +=  pst                  3.0      # 5.10

PKGNAME-main=		${DISTNAME}
PKGNAME-python=		py-${DISTNAME}

CATEGORIES=		converters mail

HOMEPAGE=		http://www.five-ten-sg.com/libpst/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

cWANTLIB += m pthread stdc++

WANTLIB-main += ${cWANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-main += bz2 c expat ffi fontconfig freetype gd gio-2.0
WANTLIB-main += glib-2.0 gmodule-2.0 gobject-2.0 gsf-1 jpeg pcre png
WANTLIB-main += pthread-stubs tiff vpx xml2 z m pthread stdc++

WANTLIB-python += ${cWANTLIB} ${MODLIBICONV_WANTLIB}
WANTLIB-python += pst util boost_python

MASTER_SITES=		${HOMEPAGE}/packages/ \
			http://distfiles.nl/

MULTI_PACKAGES=		-main -python

MODULES=		converters/libiconv \
			devel/gettext \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS-main}
RUN_DEPENDS-main=	graphics/ImageMagick
LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			devel/libgsf \
			graphics/gd

LIB_DEPENDS-python=	${MODLIBICONV_LIB_DEPENDS} \
			${BASE_PKGPATH} \
			devel/boost

USE_GMAKE=		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-pst-debug \
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

FAKE_FLAGS+=		htmldir="${PREFIX}/share/doc/libpst/" \
			htmldeveldir="${PREFIX}/share/doc/libpst/devel/"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
