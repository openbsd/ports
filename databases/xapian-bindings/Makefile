# $OpenBSD: Makefile,v 1.8 2017/11/13 23:36:05 jeremy Exp $

COMMENT-main=	perl bindings for Xapian
COMMENT-python=	python bindings for Xapian
COMMENT-ruby=	ruby bindings for Xapian

V=		1.4.5
DISTNAME=	xapian-bindings-${V}

PKGNAME-main=	xapian-bindings-perl-${V}
PKGNAME-python=	xapian-bindings-python-${V}
PKGNAME-ruby=	ruby${MODRUBY_BINREV}-xapian-${V}

MODULES=	lang/python \
		lang/ruby

MULTI_PACKAGES=	-main -python -ruby

CATEGORIES=	databases textproc

HOMEPAGE=	http://xapian.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://oligarchy.co.uk/xapian/${V}/
EXTRACT_SUFX=	.tar.xz

LIB_DEPENDS=		databases/xapian-core

WANTLIB += ${COMPILER_LIBCXX} m uuid z xapian
WANTLIB-main = ${WANTLIB} c perl

RUN_DEPENDS-ruby =	${MODRUBY_RUN_DEPENDS}
SUBST_VARS+=		MODRUBY_BINREV

AUTOCONF_VERSION=	2.68
CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		RUBY="${RUBY}" RDOC="${RUBY:S/ruby/rdoc/}"
CONFIGURE_ARGS=		--without-php \
			--without-tcl --without-csharp \
			--without-java --without-lua

post-install:
	mv ${PREFIX}/share/doc/xapian-bindings/ruby{,${MODRUBY_BINREV}}

.include <bsd.port.mk>
