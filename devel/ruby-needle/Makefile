# $OpenBSD: Makefile,v 1.5 2010/09/23 22:30:26 jeremy Exp $

COMMENT=	dependency-injection/inversion-of-control container for Ruby

DISTNAME=	needle-1.3.0
PKGNAME=	ruby-${DISTNAME}
REVISION =      1
CATEGORIES=	devel

# bsd/ruby
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=needle/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
