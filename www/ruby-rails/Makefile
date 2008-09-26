# $OpenBSD: Makefile,v 1.17 2008/09/26 14:46:44 jcs Exp $

COMMENT=	ruby MVC web application framework

DISTNAME=	rails-2.1.1
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
		:ruby-activesupport->=2.1.1:devel/ruby-activesupport \
		:ruby-activerecord->=2.1.1:databases/ruby-activerecord \
		:ruby-actionpack->=2.1.1:devel/ruby-actionpack \
		:ruby-actionmailer->=2.1.1:mail/ruby-actionmailer \
		:ruby-activeresource->=2.1.1:www/ruby-activeresource

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
