# $OpenBSD: Makefile,v 1.92 2019/11/01 15:38:04 jasper Exp $

COMMENT-main=		XSLT C Library for GNOME
COMMENT-python= 	Python bindings for libxslt

VERSION=		1.1.34
DISTNAME=		libxslt-${VERSION}
PKGNAME-main=		libxslt-${VERSION}
PKGNAME-python= 	py-libxslt-${VERSION}

SHARED_LIBS +=  xslt                 4.0      # 2.33
SHARED_LIBS +=  exslt                9.8      # 8.20

CATEGORIES=		textproc

HOMEPAGE=		http://xmlsoft.org/XSLT/

MASTER_SITES=		https://distfiles.nl/ \
			ftp://xmlsoft.org/libxslt/

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB=		gpg-error iconv intl lzma m z

PSEUDO_FLAVORS=		no_python
FLAVOR?=

MULTI_PACKAGES=		-main -python

WANTLIB-main=		${WANTLIB} c xml2 gcrypt pthread
LIB_DEPENDS-main=	textproc/libxml \
			security/libgcrypt

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libxml-include-prefix="${LOCALBASE}/include/libxml2" \
			--with-html-subdir=libxslt/html
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			XML_CONFIG="${LOCALBASE}/bin/xml2-config"

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-python}
CONFIGURE_ARGS+=	--without-python
.else
MODULES+=		lang/python
MODPY_RUNDEP=		No
BUILD_DEPENDS+= 	textproc/libxml,-python
WANTLIB-python= 	${WANTLIB} gcrypt xml2 exslt xslt pthread util \
			${MODPY_WANTLIB}
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}
LIB_DEPENDS-python=	textproc/libxslt,-main
FAKE_FLAGS=		EXAMPLE_DIR=${PREFIX}/share/examples/libxslt/
CONFIGURE_ARGS+=	--with-python

post-install:
	rmdir ${PREFIX}/share/doc/libxslt-python-${VERSION}
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{la,a}
.endif

.include <bsd.port.mk>
