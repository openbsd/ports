# $OpenBSD: Makefile,v 1.5 2008/06/14 23:46:38 landry Exp $

COMMENT=	simple mock object for unit testing

DISTNAME=	flexmock-0.8.0
PKGNAME=	ruby-${DISTNAME}p0
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
