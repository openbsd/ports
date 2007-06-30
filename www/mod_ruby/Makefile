# $OpenBSD: Makefile,v 1.6 2007/06/30 15:32:30 simon Exp $

COMMENT=		"module that embeds Ruby into Apache"

DISTNAME=		mod_ruby-1.2.6
PKGNAME=		${DISTNAME}p0
CATEGORIES=		www

HOMEPAGE=		http://modruby.net/

MAINTAINER=		Adam Montague <amontague@siriushosting.com>

MODULES=		apache-module

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

MODAPACHE_NAME=		ruby

MASTER_SITES=		http://modruby.net/archive/

LIB_DEPENDS=		ruby::lang/ruby

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	configure.rb
CONFIGURE_ARGS+=	--with-apxs=/usr/sbin/apxs

NO_REGRESS=		Yes

SEPARATE_BUILD=		concurrent
INSTALL_TARGET=		install-ruby

SUBST_VARS=		PKGNAME

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_ruby
	${INSTALL_DATA} ${WRKSRC}/examples/httpd.conf ${PREFIX}/share/examples/mod_ruby/
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
