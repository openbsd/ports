# $OpenBSD: Makefile,v 1.6 2014/06/14 10:34:45 sthen Exp $

COMMENT-main=		Redland librdf Perl Bindings
#COMMENT-lua=		Redland librdf Lua Bindings
COMMENT-php=		Redland librdf PHP Bindings
COMMENT-python=		Redland librdf Python Bindings
COMMENT-ruby=		Redland librdf Ruby Bindings
CATEGORIES=		textproc

V=			1.0.14.1
DISTNAME=		redland-bindings-$V
PKGNAME-main=		p5-librdf-$V
#PKGNAME-lua=		lua-librdf-$V
PKGNAME-php=		php-librdf-$V
PKGNAME-python=		py-librdf-$V
PKGNAME-ruby=		ruby-librdf-$V
REVISION-php=		0
REVISION-main=		0

HOMEPAGE=		http://librdf.org/bindings/

MASTER_SITES=		http://download.librdf.org/source/

# LGPL 2.1, or Apache 2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += rdf

# -main is the Perl binding, XXX needs pthreads.
# -lua doesn't work yet.
MULTI_PACKAGES=		-main -php -python -ruby

LIB_DEPENDS=		textproc/redland
BUILD_DEPENDS=		devel/swig

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-perl
USE_GROFF=		Yes

MODULES+=		lang/python
CONFIGURE_ARGS+=	--with-python
MODPY_RUNDEP=		No
CONFIGURE_ENV+=		PYTHON=${MODPY_BIN}
LIB_DEPENDS-python=	${LIB_DEPENDS} ${MODPY_LIB_DEPENDS}
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}
WANTLIB-python=		${WANTLIB} ${MODPY_WANTLIB} raptor2 rasqal

# marked experimental and doesn't build cleanly yet.
#MODULES+=		lang/lua
#CONFIGURE_ARGS+=	--with-lua
#MODLUA_RUNDEP=		No
#CONFIGURE_ENV+=	LUA=${MODLUA_DEP}
#LIB_DEPENDS-lua=	${LIB_DEPENDS} ${MODLUA_LIB_DEPENDS}
#RUN_DEPENDS-lua=	${MODLUA_RUN_DEPENDS}
#WANTLIB-lua=		${WANTLIB} ${MODLUA_WANTLIB}

MODULES+=		lang/php
CONFIGURE_ARGS+=	--with-php
MODPHP_RUNDEP=		No
CONFIGURE_ENV+=		PHP=${MODPHP_BIN} \
			PHP_CONFIG=${MODPHP_PHP_CONFIG}
LIB_DEPENDS-php=	${LIB_DEPENDS} ${MODPHP_LIB_DEPENDS}
RUN_DEPENDS-php=	${MODPHP_RUN_DEPENDS}

MODULES+=		lang/ruby
CONFIGURE_ARGS+=	--with-ruby
MODRUBY_REV=		1.8
MODRUBY_RUNDEP=		No
CONFIGURE_ENV+=		RUBY=${RUBY}
LIB_DEPENDS-ruby=	${LIB_DEPENDS} ${MODRUBY_LIB_DEPENDS}
RUN_DEPENDS-ruby=	${MODRUBY_RUN_DEPENDS}
WANTLIB-ruby=		${WANTLIB} ${MODRUBY_WANTLIB}

.include <bsd.port.mk>
