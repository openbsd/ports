# $OpenBSD: Makefile,v 1.7 2017/09/23 10:53:07 sthen Exp $

COMMENT-main=	perl bindings for Xapian
COMMENT-python=	python bindings for Xapian

V=		1.2.15
DISTNAME=	xapian-bindings-${V}
REVISION-main =	3
REVISION-python = 1

PKGNAME-main=	xapian-bindings-perl-${V}
PKGNAME-python=	xapian-bindings-python-${V}

MODULES=	lang/python

MULTI_PACKAGES=	-main -python

CATEGORIES=	databases textproc

HOMEPAGE=	http://xapian.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://oligarchy.co.uk/xapian/${V}/

LIB_DEPENDS=		databases/xapian-core

WANTLIB += ${COMPILER_LIBCXX} m uuid z xapian
WANTLIB-main = ${WANTLIB} c perl

AUTOCONF_VERSION=	2.68
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--without-php --without-ruby \
			--without-tcl --without-csharp \
			--without-java --without-lua

.include <bsd.port.mk>
