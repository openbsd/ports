# $OpenBSD

COMMENT =	super simple job queue over AMQP

DISTNAME =	minion-0.1.10
REVISION =	1
CATEGORIES =	net

MAINTAINER =	Mathieu Sauve-Frankel <msf@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-amqp-*:net/ruby-amqp,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-bunny-*:net/ruby-bunny,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-json-*:converters/ruby-json,${FLAVOR}

.include <bsd.port.mk>
