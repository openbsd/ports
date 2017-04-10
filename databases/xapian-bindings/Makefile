# $OpenBSD: Makefile,v 1.3 2017/04/10 11:45:25 sthen Exp $

COMMENT-main=	perl bindings for Xapian
COMMENT-python=	python bindings for Xapian

V=		1.2.15
REVISION-main=	0
DISTNAME=	xapian-bindings-${V}

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

WANTLIB += m ${LIBCXX} uuid z xapian
WANTLIB-main = ${WANTLIB} perl # uses perl ABI

AUTOCONF_VERSION=	2.68
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--without-php --without-ruby \
			--without-tcl --without-csharp \
			--without-java --without-lua

.include <bsd.port.mk>
