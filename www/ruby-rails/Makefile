# $OpenBSD: Makefile,v 1.24 2010/09/28 20:12:19 jeremy Exp $

COMMENT=	ruby MVC web application framework

DISTNAME=	rails-2.3.4
PKGNAME=	ruby-${DISTNAME}
REVISION=	0
CATEGORIES=	www

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-rake->=0.7.3:devel/ruby-rake \
		:ruby-activesupport->=2.3.4:devel/ruby-activesupport \
		:ruby-activerecord->=2.3.4:databases/ruby-activerecord \
		:ruby-actionpack->=2.3.4:devel/ruby-actionpack \
		:ruby-actionmailer->=2.3.4:mail/ruby-actionmailer \
		:ruby-activeresource->=2.3.4:www/ruby-activeresource \
		:ruby-gems->=1.3.2:devel/ruby-gems

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
