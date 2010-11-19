# $OpenBSD: Makefile,v 1.5 2010/11/19 22:31:38 espie Exp $

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
RUN_DEPENDS =	devel/ruby-facets,${FLAVOR}>=2.7.0 \
		devel/ruby-trollop,${FLAVOR}>=1.10.2 \
		net/ruby-amqp,${FLAVOR}>=0.6.0 \
		converters/ruby-json,${FLAVOR}>=1.1.6 \
		devel/ruby-clio,${FLAVOR}

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
