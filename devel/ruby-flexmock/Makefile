# $OpenBSD: Makefile,v 1.4 2007/12/22 11:33:05 bernd Exp $

COMMENT=	simple mock object for unit testing

DISTNAME=	flexmock-0.8.0
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=flexmock/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
