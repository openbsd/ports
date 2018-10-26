# $OpenBSD: Makefile,v 1.14 2018/10/26 16:13:00 jeremy Exp $

COMMENT-main=	perl bindings for Xapian
COMMENT-python=	python bindings for Xapian
COMMENT-ruby=	ruby bindings for Xapian

V=		1.4.5
DISTNAME=	xapian-bindings-${V}

PKGNAME-main=	xapian-bindings-perl-${V}
PKGNAME-python=	xapian-bindings-python-${V}
PKGNAME-ruby=	ruby${MODRUBY_BINREV}-xapian-${V}

REVISION-python=	2
REVISION-ruby=		2
REVISION-main=		1

MODULES=	lang/python \
		lang/ruby

MULTI_PACKAGES=	-main -python -ruby

CATEGORIES=	databases textproc

HOMEPAGE=	http://xapian.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://oligarchy.co.uk/xapian/${V}/
EXTRACT_SUFX=	.tar.xz

# -std=gnu++11
COMPILER=		base-clang ports-gcc base-gcc

LIB_DEPENDS=		databases/xapian-core

BUILD_DEPENDS=		textproc/py-sphinx

WANTLIB += ${COMPILER_LIBCXX} m uuid z xapian
WANTLIB-main = ${WANTLIB} c perl

MODRUBY_RUNDEP = 	No
MODPY_RUNDEP = 		No

RUN_DEPENDS-python =	textproc/py-sphinx ${MODPY_RUN_DEPENDS}
RUN_DEPENDS-ruby =	${MODRUBY_RUN_DEPENDS}
SUBST_VARS+=		MODRUBY_BINREV

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		RUBY="${RUBY}" RDOC="${RUBY:S/ruby/rdoc/}"
CONFIGURE_ARGS=		--with-perl \
			--with-python \
			--with-ruby \
			--without-python3 \
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
