# $OpenBSD: Makefile,v 1.29 2011/01/06 04:24:25 jeremy Exp $

COMMENT=	ruby MVC web application framework

VERSION=	3.0.3
DISTNAME=	rails-${VERSION}
REVISION =	0
CATEGORIES=	www

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/ruby-railties,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-activesupport,${MODRUBY_FLAVOR}=${VERSION} \
		databases/ruby-activerecord,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-actionpack,${MODRUBY_FLAVOR}=${VERSION} \
		mail/ruby-actionmailer,${MODRUBY_FLAVOR}=${VERSION} \
		www/ruby-activeresource,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-bundler,${MODRUBY_FLAVOR}>=1.0,<2.0

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
