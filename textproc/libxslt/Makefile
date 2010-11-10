# $OpenBSD: Makefile,v 1.66 2010/11/10 22:44:03 jasper Exp $

COMMENT-main=		XSLT C Library for GNOME
COMMENT-python= 	Python bindings for libxslt

VERSION=		1.1.26
DISTNAME=		libxslt-${VERSION}
PKGNAME-main=		libxslt-${VERSION}
PKGNAME-python= 	py-libxslt-${VERSION}
REVISION-main=		1
REVISION-python=	1
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

MULTI_PACKAGES=		-main

WANTLIB-main=		${WANTLIB} c xml2.>=9 gcrypt.>=12
LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			:libxml->=2.6.27:textproc/libxml \
			::security/libgcrypt

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-libxml-include-prefix="${LOCALBASE}/include/" \
			--with-html-subdir=libxslt/html

.if !${FLAVOR:L:Mno_python}
MULTI_PACKAGES+=	-python
MODULES+=		lang/python
BUILD_DEPENDS+= 	:py-libxml-*:textproc/libxml,-python
WANTLIB-python= 	${WANTLIB} gcrypt xml2 exslt xslt
LIB_DEPENDS-python=	::textproc/libxslt,-main \
			${MODGETTEXT_LIB_DEPENDS}
FAKE_FLAGS=		EXAMPLE_DIR=${PREFIX}/share/examples/libxslt/
.endif

.include <bsd.port.mk>

.if ${FLAVOR:L:Mno_python} || ${NO_SHARED_LIBS:L} == "yes"
CONFIGURE_ARGS+=	--without-python
.else
CONFIGURE_ARGS+=	--with-python
.endif
