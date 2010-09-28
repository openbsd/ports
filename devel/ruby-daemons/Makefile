# $OpenBSD: Makefile,v 1.10 2010/09/28 20:12:16 jeremy Exp $

COMMENT=	wrap existing Ruby scripts to be run as a daemon

DISTNAME=	daemons-1.0.10
PKGNAME=	ruby-${DISTNAME}
REVISION =      1
CATEGORIES=	devel

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
