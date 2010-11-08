# $OpenBSD: Makefile,v 1.4 2010/11/08 23:28:54 jeremy Exp $

COMMENT =	AMQP command line utilities

DISTNAME =	amqp-utils-0.2.3
REVISION =	0
CATEGORIES =	net

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-facets->=2.7.0:devel/ruby-facets,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-trollop->=1.10.2:devel/ruby-trollop,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-amqp->=0.6.0:net/ruby-amqp,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-json->=1.1.6:converters/ruby-json,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-clio-*:devel/ruby-clio,${FLAVOR}

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
