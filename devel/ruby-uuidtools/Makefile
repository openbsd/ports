# $OpenBSD: Makefile,v 1.1.1.1 2007/09/26 16:46:48 bernd Exp $

COMMENT=	simple library for generating UUIDs

DISTNAME=	uuidtools-1.0.1
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=uuidtools/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
