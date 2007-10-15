# $OpenBSD: Makefile,v 1.11 2007/10/15 15:32:59 jcs Exp $

COMMENT=	ruby MVC web application framework

DISTNAME=	rails-1.2.5
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
		:ruby-actionmailer->=1.3.5:mail/ruby-actionmailer \
		:ruby-actionwebservice->=1.2.5:www/ruby-actionwebservice \
		:ruby-activesupport->=1.4.4:devel/ruby-activesupport

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
