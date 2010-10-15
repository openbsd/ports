# $OpenBSD: Makefile,v 1.3 2010/10/15 15:40:07 jeremy Exp $

COMMENT =	AMQP command line utilities

DISTNAME =	amqp-utils-0.2.3
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	net

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

PKG_ARCH =	*

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:ruby-facets->=2.7.0:devel/ruby-facets \
		:ruby-trollop->=1.10.2:devel/ruby-trollop \
		:ruby-amqp->=0.6.0:net/ruby-amqp \
		:ruby-json->=1.1.6:converters/ruby-json \
		::devel/ruby-clio

GEM_SKIPDEPENDS = trollop

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
