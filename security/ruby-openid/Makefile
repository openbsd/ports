# $OpenBSD: Makefile,v 1.18 2013/03/05 09:09:57 jasper Exp $

COMMENT=	robust library for verifying and serving OpenID identities

DISTNAME=	ruby-${PKGNAME}
PKGNAME=	openid-2.2.2
CATEGORIES=	security

# Apache License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

# They are included in the tarball, but how to run them?
NO_REGRESS=	Yes
.include <bsd.port.mk>
