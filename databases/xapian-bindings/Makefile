# $OpenBSD: Makefile,v 1.5 2017/07/23 09:26:26 espie Exp $

COMMENT-main=	perl bindings for Xapian
COMMENT-python=	python bindings for Xapian

V=		1.2.15
DISTNAME=	xapian-bindings-${V}
REVISION-main =	1
REVISION-python = 0

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

WANTLIB += m ${COMPILER_LIBCXX} uuid z xapian
WANTLIB-main = ${WANTLIB} perl # uses perl ABI

AUTOCONF_VERSION=	2.68
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--without-php --without-ruby \
			--without-tcl --without-csharp \
			--without-java --without-lua

.include <bsd.port.mk>
