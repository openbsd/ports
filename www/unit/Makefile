# $OpenBSD: Makefile,v 1.2 2021/10/24 14:27:42 sthen Exp $

COMMENT-main=	dynamic web application server
COMMENT-perl=	NGINX Unit perl module
COMMENT-python=	NGINX Unit python module
COMMENT-ruby=	NGINX Unit ruby module

VERSION=	1.25.0
DISTNAME=	unit-${VERSION}

PKGNAME-main=	${DISTNAME}
PKGNAME-perl=	unit-perl-${VERSION}
PKGNAME-python=	unit-python-${VERSION}
PKGNAME-ruby=	unit-ruby-${VERSION}

CATEGORIES=	www

HOMEPAGE=	https://unit.nginx.org
MASTER_SITES=	https://unit.nginx.org/download/

MAINTAINER=	Sergey A. Osokin <osa@FreeBSD.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB-main=	c crypto m pcre2-8 pthread ssl

MULTI_PACKAGES=	-main -perl -python -ruby

FLAVOR?=
PSEUDO_FLAVORS=	${MULTI_PACKAGES:N-main:C/-/no_/g}

COMPILER=	base-clang ports-gcc

CONFIGURE_STYLE=simple

SUBST_VARS=	MODRUBY_REV

CFLAGS+=	-I${LOCALBASE}/include

CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--ld-opt="-L${LOCALBASE}/lib" \
		--log=${LOCALSTATEDIR}/log/unit/unit.log \
		--mandir=${PREFIX}/man \
		--modules=lib/unit/modules \
		--control=unix:${LOCALSTATEDIR}/run/unit/control.unit.sock \
		--pid=${LOCALSTATEDIR}/run/unit/unit.pid \
		--state=${LOCALSTATEDIR}/db/unit \
		--tmp=${LOCALSTATEDIR}/tmp/unit \
		--openssl \
		--user=_unit \
		--group=_unit

#NO_TEST=	Yes

LIB_DEPENDS-main=	devel/pcre2
RUN_DEPENDS-main=	# empty

.include <bsd.port.arch.mk>

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.if ${PROPERTIES:Mclang}
# needed for Ruby 3.0 with clang, but the compiler flags must be
# consistent whether ruby is enabled or not
CFLAGS+=	-fdeclspec
.endif

.if ${BUILD_PACKAGES:M-perl}
WANTLIB-perl=	c m perl
MODULES+=	perl
.endif

.if ${BUILD_PACKAGES:M-python}
WANTLIB-python=	${MODPY_WANTLIB} intl m pthread util
MODULES+=	lang/python
CONFIGURE_ENV+=	PYTHON=${MODPY_BIN} \
		PYTHON_CONFIG=${MODPY_BIN}-config
LIB_DEPENDS-python= ${MODPY_LIB_DEPENDS}
RUN_DEPENDS-python= ${MODPY_RUN_DEPENDS}
MODPY_PYTEST=	Yes
TEST_DEPENDS+=	devel/py-six${MODPY_FLAVOR}
.else
NO_TEST=	Yes
.endif

.if ${BUILD_PACKAGES:M-ruby}
# XXX incorrect linking; should be linked against actual version number
# i.e. "libruby30.so.0.0" not just "libruby30.so"
WANTLIB-ruby=	${MODRUBY_WANTLIB}
MODULES+=	lang/ruby
CONFIGURE_ENV+=	RUBY=${RUBY}
LIB_DEPENDS-ruby= ${MODRUBY_LIB_DEPENDS}
RUN_DEPENDS-ruby= ${MODRUBY_RUN_DEPENDS}
TEST_DEPENDS+=	www/ruby-rack,${MODRUBY_FLAVOR}
.endif

.for i in ${BUILD_PACKAGES:N-main}
RUN_DEPENDS$i += www/unit,-main=${VERSION}
.endfor

post-configure:
.if ${BUILD_PACKAGES:M-perl}
	cd ${WRKSRC} && ./configure perl
.endif
.if ${BUILD_PACKAGES:M-python}
	cd ${WRKSRC} && ./configure python --config=${MODPY_BIN}-config
.endif
.if ${BUILD_PACKAGES:M-ruby}
	cd ${WRKSRC} && ./configure ruby --ruby=${MODRUBY_FLAVOR} \
	    --module=ruby${MODRUBY_REV}
.endif

.if ${BUILD_PACKAGES:M-python}
do-test:
	@${MODPY_TEST_TARGET}
.endif

.include <bsd.port.mk>
