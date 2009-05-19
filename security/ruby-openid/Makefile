# $OpenBSD: Makefile,v 1.8 2009/05/19 21:07:26 pirofti Exp $

COMMENT=	robust library for verifying and serving OpenID identities

DISTNAME=	ruby-openid-2.1.6
PKGNAME=	${DISTNAME}
CATEGORIES=	security

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# Apache License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=ruby-openid/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -rubygems admin/runtests.rb

.include <bsd.port.mk>
