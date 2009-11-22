# $OpenBSD: Makefile,v 1.1.1.1 2009/11/22 06:52:36 msf Exp $

COMMENT =	AMQP command line utilities

DISTNAME =	amqp-utils-0.1.2
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	net

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=amqp-utils/}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:ruby-facets->=2.7.0:devel/ruby-facets \
		:ruby-trollop->=1.10.2:devel/ruby-trollop \
		:ruby-amqp->=0.6.0:net/ruby-amqp \
		::devel/ruby-clio

GEM_SKIPDEPENDS = tmm1-amqp trollop

.include <bsd.port.mk>
