# $OpenBSD: Makefile,v 1.21 2019/07/12 20:49:36 sthen Exp $

COMMENT=	robust library for verifying and serving OpenID identities

DISTNAME=	ruby-${PKGNAME}
PKGNAME=	openid-2.2.2
REVISION =	0
CATEGORIES=	security

# Apache License
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

# They are included in the tarball, but how to run them?
NO_TEST=	Yes
.include <bsd.port.mk>
