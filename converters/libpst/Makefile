# $OpenBSD: Makefile,v 1.3 2009/09/16 18:05:14 ajacoutot Exp $

COMMENT-main=		read and convert Microsoft Outlook mail files
COMMENT-python=		python interface to libpst

DISTNAME=		libpst-0.6.43
SHARED_LIBS +=  pst                  1.0      # .4.1

PKGNAME-main=		${DISTNAME}
PKGNAME-python=		py-${DISTNAME}

CATEGORIES=		converters mail

HOMEPAGE=		http://www.five-ten-sg.com/libpst/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-main += c expat fontconfig freetype jpeg m png pthread stdc++
WANTLIB-main += z

MASTER_SITES=		${HOMEPAGE}/packages/

MULTI_PACKAGES=		-main -python

MODULES=		converters/libiconv \
			lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS-main=	::graphics/ImageMagick
LIB_DEPENDS-main=	${MODLIBICONV_LIB_DEPENDS} \
			gd.>=20::graphics/gd

LIB_DEPENDS-python=	${MODLIBICONV_LIB_DEPENDS} \
			pst.>=1::${BASE_PKGPATH} \
			boost_python.>=1::devel/boost

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-pst-debug \
			--enable-static-tools=no \
			--enable-libpst-shared
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${MODPY_INCDIR}" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread" \
			PYTHON_LDFLAGS="-L${LOCALBASE}/lib -lpython${MODPY_VERSION} -lm"

CFLAGS+=		-pthread

FAKE_FLAGS+=		htmldir="${PREFIX}/share/doc/libpst/" \
			htmldeveldir="${PREFIX}/share/doc/libpst/devel/"

.include <bsd.port.mk>
