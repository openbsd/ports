# $OpenBSD: Makefile,v 1.78 2015/06/10 21:42:26 sthen Exp $

COMMENT-main=		XSLT C Library for GNOME
COMMENT-python= 	Python bindings for libxslt

VERSION=		1.1.28
DISTNAME=		libxslt-${VERSION}
PKGNAME-main=		libxslt-${VERSION}
PKGNAME-python= 	py-libxslt-${VERSION}
SHARED_LIBS=		exslt	9.8 \
			xslt	3.8
REVISION-main =		1

CATEGORIES=		textproc

HOMEPAGE=		http://xmlsoft.org/XSLT/

MASTER_SITES=		http://distfiles.nl/ \
			ftp://xmlsoft.org/libxslt/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		gpg-error m z

MODULES=		devel/gettext

PSEUDO_FLAVORS=		no_python
FLAVOR?=

MULTI_PACKAGES=		-main -python
NOT_FOR_ARCHS-python = 	${NO_SHARED_ARCHS}

WANTLIB-main=		${WANTLIB} c lzma xml2>=9 gcrypt>=12 pthread
LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			textproc/libxml>=2.6.27 \
			security/libgcrypt
# non shared archs won't inherit it from libgcrypt
LIB_DEPENDS-main +=	security/libgpg-error

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-libxml-include-prefix="${LOCALBASE}/include/" \
			--with-html-subdir=libxslt/html

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-python}
MODULES+=		lang/python
MODPY_RUNDEP=		No
BUILD_DEPENDS+= 	textproc/libxml,-python
WANTLIB-python= 	${WANTLIB} gcrypt xml2 exslt xslt pthread util \
			${MODPY_WANTLIB}
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS} \
			${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-python=	textproc/libxslt,-main \
			${MODGETTEXT_LIB_DEPENDS}
FAKE_FLAGS=		EXAMPLE_DIR=${PREFIX}/share/examples/libxslt/
CONFIGURE_ARGS+=	--with-python

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{la,a}
.else
CONFIGURE_ARGS+=	--without-python
.endif

.include <bsd.port.mk>
