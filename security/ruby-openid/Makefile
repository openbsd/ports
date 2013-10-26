# $OpenBSD: Makefile,v 1.20 2013/10/26 23:55:37 jeremy Exp $

COMMENT=	robust library for verifying and serving OpenID identities

DISTNAME=	ruby-${PKGNAME}
PKGNAME=	openid-2.2.2
REVISION =	0
CATEGORIES=	security

# Apache License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

# They are included in the tarball, but how to run them?
NO_TEST=	Yes
.include <bsd.port.mk>
