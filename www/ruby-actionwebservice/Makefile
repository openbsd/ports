# $OpenBSD: Makefile,v 1.11 2007/11/26 18:18:55 bernd Exp $

COMMENT=	action controller and action view of rails MVC framework

DISTNAME=	actionwebservice-1.2.6
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	www

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=aws/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-activerecord->=1.15.6:databases/ruby-activerecord \
		:ruby-actionpack->=1.13.6:devel/ruby-actionpack

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
