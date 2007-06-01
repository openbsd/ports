# $OpenBSD: Makefile,v 1.2 2007/06/01 16:28:31 jcs Exp $

COMMENT=	"ruby library to provide colorspace support"

DISTNAME=	color-tools-1.3.0
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=ruby-pdf/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
