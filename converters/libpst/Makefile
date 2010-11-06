# $OpenBSD: Makefile,v 1.13 2010/11/06 10:18:38 espie Exp $

COMMENT-main=		read and convert Microsoft Outlook mail files
COMMENT-python=		python interface to libpst

DISTNAME=		libpst-0.6.45
SHARED_LIBS +=  pst                  1.0      # .4.1

PKGNAME-main=		${DISTNAME}
PKGNAME-python=		py-${DISTNAME}
REVISION-python =	0

CATEGORIES=		converters mail

HOMEPAGE=		http://www.five-ten-sg.com/libpst/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-main += c expat fontconfig freetype jpeg m png pthread stdc++
WANTLIB-main += z
WANTLIB-main += gd.>=20 ${MODLIBICONV_WANTLIB}

WANTLIB-python += pst.>=1 boost_python.>=1 ${MODLIBICONV_WANTLIB}

MASTER_SITES=		${HOMEPAGE}/packages/

MULTI_PACKAGES=		-main -python

MODULES=		converters/libiconv \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS-main}
RUN_DEPENDS-main=	::graphics/ImageMagick
LIB_DEPENDS-main=	${MODLIBICONV_LIB_DEPENDS} \
			::graphics/gd

LIB_DEPENDS-python=	${MODLIBICONV_LIB_DEPENDS} \
			::${BASE_PKGPATH} \
			::devel/boost

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-pst-debug \
			--enable-static-tools=no \
			--enable-libpst-shared
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${MODPY_INCDIR}" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread" \
			PYTHON_LDFLAGS="-L${LOCALBASE}/lib -lpython${MODPY_VERSION} -lm" \
			PYTHON_BIN="python${MODPY_VERSION}"

CFLAGS+=		-pthread

# XXX eats all memory
.if ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH} == "hppa"
CFLAGS+=        -O0
.endif

FAKE_FLAGS+=		htmldir="${PREFIX}/share/doc/libpst/" \
			htmldeveldir="${PREFIX}/share/doc/libpst/devel/"

.include <bsd.port.mk>
