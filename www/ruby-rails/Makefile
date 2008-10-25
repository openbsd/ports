# $OpenBSD: Makefile,v 1.18 2008/10/25 10:39:48 bernd Exp $

COMMENT=	ruby MVC web application framework

DISTNAME=	rails-2.1.2
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
RUN_DEPENDS=	:ruby-rake->=0.7.3:devel/ruby-rake \
		:ruby-activesupport-2.1.2:devel/ruby-activesupport \
		:ruby-activerecord-2.1.2:databases/ruby-activerecord \
		:ruby-actionpack-2.1.2:devel/ruby-actionpack \
		:ruby-actionmailer-2.1.2:mail/ruby-actionmailer \
		:ruby-activeresource-2.1.2:www/ruby-activeresource

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
