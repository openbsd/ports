# $OpenBSD: Makefile,v 1.87 2016/09/01 21:56:34 jasper Exp $

COMMENT-main=		XSLT C Library for GNOME
COMMENT-python= 	Python bindings for libxslt

VERSION=		1.1.29
DISTNAME=		libxslt-${VERSION}
PKGNAME-main=		libxslt-${VERSION}
PKGNAME-python= 	py-libxslt-${VERSION}

SHARED_LIBS +=  xslt                 3.8      # 2.28
SHARED_LIBS +=  exslt                9.8      # 8.17

CATEGORIES=		textproc

HOMEPAGE=		http://xmlsoft.org/XSLT/

MASTER_SITES=		https://distfiles.nl/ \
			ftp://xmlsoft.org/libxslt/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		gpg-error iconv intl lzma m z

PSEUDO_FLAVORS=		no_python
FLAVOR?=

MULTI_PACKAGES=		-main -python

WANTLIB-main=		${WANTLIB} c xml2 gcrypt pthread
LIB_DEPENDS-main=	textproc/libxml \
			security/libgcrypt

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libxml-include-prefix="${LOCALBASE}/include/" \
			--with-html-subdir=libxslt/html

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
# empty file
	rm ${PREFIX}/share/doc/libxslt-python-${VERSION}/TODO
	rmdir ${PREFIX}/share/doc/libxslt-python-${VERSION}
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{la,a}
.endif

.include <bsd.port.mk>
