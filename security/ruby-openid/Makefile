# $OpenBSD: Makefile,v 1.19 2013/03/11 11:41:28 espie Exp $

COMMENT=	robust library for verifying and serving OpenID identities

DISTNAME=	ruby-${PKGNAME}
PKGNAME=	openid-2.2.2
CATEGORIES=	security

# Apache License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

# They are included in the tarball, but how to run them?
NO_TEST=	Yes
.include <bsd.port.mk>
