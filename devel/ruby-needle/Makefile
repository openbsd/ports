# $OpenBSD: Makefile,v 1.2 2007/06/01 16:28:31 jcs Exp $

COMMENT=	"dependency-injection/inversion-of-control container for Ruby"

DISTNAME=	needle-1.3.0
PKGNAME=	ruby-${DISTNAME}
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
