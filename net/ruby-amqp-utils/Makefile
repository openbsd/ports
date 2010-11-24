# $OpenBSD: Makefile,v 1.6 2010/11/24 21:35:15 jeremy Exp $

COMMENT =	AMQP command line utilities

DISTNAME =	amqp-utils-0.2.3
REVISION =	1
CATEGORIES =	net

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-facets,${MODRUBY_FLAVOR}>=2.7.0 \
		devel/ruby-trollop,${MODRUBY_FLAVOR}>=1.10.2 \
		net/ruby-amqp,${MODRUBY_FLAVOR}>=0.6.0 \
		converters/ruby-json,${MODRUBY_FLAVOR}>=1.1.6 \
		devel/ruby-clio,${MODRUBY_FLAVOR}

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
