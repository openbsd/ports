# $OpenBSD: Makefile,v 1.22 2019/10/23 12:13:34 sthen Exp $

COMMENT-main=	perl bindings for Xapian
COMMENT-python=	python bindings for Xapian
COMMENT-ruby=	ruby bindings for Xapian

V=		1.4.13
DISTNAME=	xapian-bindings-${V}

PKGNAME-main=	xapian-bindings-perl-${V}
PKGNAME-python=	xapian-bindings-python-${V}
PKGNAME-ruby=	ruby${MODRUBY_BINREV}-xapian-${V}

MODULES=	lang/python \
		lang/ruby

MODPY_VERSION ?=	${MODPY_DEFAULT_VERSION_3}

MULTI_PACKAGES=	-main -python -ruby

CATEGORIES=	databases textproc

HOMEPAGE=	https://xapian.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://oligarchy.co.uk/xapian/${V}/
EXTRACT_SUFX=	.tar.xz

# -std=gnu++11
COMPILER=		base-clang ports-gcc base-gcc

LIB_DEPENDS=		databases/xapian-core

BUILD_DEPENDS=		textproc/py-sphinx${MODPY_FLAVOR}

WANTLIB += ${COMPILER_LIBCXX} m uuid z xapian
WANTLIB-main = ${WANTLIB} c perl

MODRUBY_RUNDEP = 	No
MODPY_RUNDEP = 		No

RUN_DEPENDS-python =	textproc/py-sphinx${MODPY_FLAVOR} \
			${MODPY_RUN_DEPENDS}
RUN_DEPENDS-ruby =	${MODRUBY_RUN_DEPENDS}
SUBST_VARS+=		MODRUBY_BINREV

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		RUBY="${RUBY}" RDOC="${RUBY:S/ruby/rdoc/}"
CONFIGURE_ARGS=		--with-perl \
			--with-python3 \
			--with-ruby \
			--without-php \
			--without-tcl \
			--without-csharp \
			--without-java \
			--without-lua

pre-configure:
	sed -i 's/\(rb_funcall(.*, 0\), NULL);/\1);/' \
		${WRKSRC}/ruby/xapian_wrap.cc

post-install:
	mv ${PREFIX}/share/doc/xapian-bindings/ruby{,${MODRUBY_BINREV}}

.include <bsd.port.mk>
