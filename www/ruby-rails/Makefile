# $OpenBSD: Makefile,v 1.25 2010/11/08 23:28:56 jeremy Exp $

COMMENT=	ruby MVC web application framework

VERSION=	2.3.4
DISTNAME=	rails-${VERSION}
REVISION=	1
CATEGORIES=	www

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	${MODRUBY_RAKE_DEPENDS} \
		:${MODRUBY_PKG_PREFIX}-activesupport->=${VERSION}:devel/ruby-activesupport,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-activerecord->=${VERSION}:databases/ruby-activerecord,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-actionpack->=${VERSION}:devel/ruby-actionpack,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-actionmailer->=${VERSION}:mail/ruby-actionmailer,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-activeresource->=${VERSION}:www/ruby-activeresource,${FLAVOR}

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
