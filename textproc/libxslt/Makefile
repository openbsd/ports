# $OpenBSD: Makefile,v 1.71 2011/10/15 12:55:14 espie Exp $

COMMENT-main=		XSLT C Library for GNOME
COMMENT-python= 	Python bindings for libxslt

VERSION=		1.1.26
DISTNAME=		libxslt-${VERSION}
PKGNAME-main=		libxslt-${VERSION}
PKGNAME-python= 	py-libxslt-${VERSION}
REVISION-main=		3
REVISION-python=	3
SHARED_LIBS=		exslt	9.8 \
			xslt	3.8

CATEGORIES=		textproc

HOMEPAGE=		http://xmlsoft.org/XSLT/

MASTER_SITES=		ftp://xmlsoft.org/libxslt/ \
			${MASTER_SITE_GNOME:=sources/libxslt/1.1/}

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		gpg-error m z

MODULES=		devel/gettext

PSEUDO_FLAVORS=		no_python
FLAVOR?=

MULTI_PACKAGES=		-main -python
NOT_FOR_ARCHS-python = 	${NO_SHARED_ARCHS}

WANTLIB-main=		${WANTLIB} c xml2>=9 gcrypt>=12
LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			textproc/libxml>=2.6.27 \
			security/libgcrypt

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
USE_GROFF=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-libxml-include-prefix="${LOCALBASE}/include/" \
			--with-html-subdir=libxslt/html

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-python}
MODULES+=		lang/python
MODPY_RUNDEP=		No
BUILD_DEPENDS+= 	textproc/libxml,-python
WANTLIB-python= 	${WANTLIB} gcrypt xml2 exslt xslt
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS} \
			${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-python=	textproc/libxslt,-main \
			${MODGETTEXT_LIB_DEPENDS}
FAKE_FLAGS=		EXAMPLE_DIR=${PREFIX}/share/examples/libxslt/
CONFIGURE_ARGS+=	--with-python
.else
CONFIGURE_ARGS+=	--without-python
.endif

.include <bsd.port.mk>
