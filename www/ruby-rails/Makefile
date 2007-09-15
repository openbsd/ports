# $OpenBSD: Makefile,v 1.9 2007/09/15 20:38:26 merdely Exp $

COMMENT=	ruby MVC web application framework

DISTNAME=	rails-1.2.3
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	www 

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=rails/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-rake-0.7.3:devel/ruby-rake \
		:ruby-actionmailer-1.3.3:mail/ruby-actionmailer \
		:ruby-actionwebservice-1.2.3:www/ruby-actionwebservice

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
