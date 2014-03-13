# $OpenBSD: Makefile,v 1.20 2014/03/13 17:33:28 sthen Exp $

COMMENT=		module that embeds Ruby into Apache

DISTNAME=		mod_ruby-1.2.6
REVISION =		8
CATEGORIES=		www

HOMEPAGE=		http://modruby.net/

MAINTAINER=		Adam Montague <amontague@siriushosting.com>

MODULES=		apache-module lang/ruby

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		m ${MODRUBY_WANTLIB}

MODAPACHE_NAME=		ruby

MASTER_SITES=		http://modruby.net/archive/

LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS}
MODRUBY_REV=		1.8

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	configure.rb
CONFIGURE_ARGS+=	--with-apxs=${MODAPACHE_APXS}

NO_TEST=		Yes

SEPARATE_BUILD=		Yes
INSTALL_TARGET=		install-ruby

SUBST_VARS=		PKGNAME

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_ruby
	${INSTALL_DATA} ${WRKSRC}/examples/httpd.conf ${PREFIX}/share/examples/mod_ruby/
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
