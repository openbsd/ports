# $OpenBSD: Makefile,v 1.11 2010/09/28 20:12:18 jeremy Exp $

COMMENT=	robust library for verifying and serving OpenID identities

DISTNAME=	ruby-openid-2.1.6
PKGNAME=	${DISTNAME}
REVISION =      1
CATEGORIES=	security

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# Apache License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -rubygems admin/runtests.rb

.include <bsd.port.mk>
