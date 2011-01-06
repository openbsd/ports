# $OpenBSD: Makefile,v 1.2 2011/01/06 04:24:25 jeremy Exp $

COMMENT=	glues the Ruby on Rails framework together

VERSION=	3.0.3
DISTNAME=	railties-${VERSION}
REVISION =	0
CATEGORIES=	www

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	${MODRUBY_RAKE_DEPENDS} \
		devel/ruby-activesupport,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-actionpack,${MODRUBY_FLAVOR}=${VERSION} \
		sysutils/ruby-thor,${MODRUBY_FLAVOR}>=0.14.4,<0.15

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
