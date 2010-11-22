# $OpenBSD: Makefile,v 1.26 2010/11/22 08:36:54 espie Exp $

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
		devel/ruby-activesupport,${FLAVOR}>=${VERSION} \
		databases/ruby-activerecord,${FLAVOR}>=${VERSION} \
		devel/ruby-actionpack,${FLAVOR}>=${VERSION} \
		mail/ruby-actionmailer,${FLAVOR}>=${VERSION} \
		www/ruby-activeresource,${FLAVOR}>=${VERSION}

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
