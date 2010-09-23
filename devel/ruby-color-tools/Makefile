# $OpenBSD: Makefile,v 1.5 2010/09/23 22:30:26 jeremy Exp $

COMMENT=	ruby library to provide colorspace support

DISTNAME=	color-tools-1.3.0
PKGNAME=	ruby-${DISTNAME}
REVISION=	1
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
