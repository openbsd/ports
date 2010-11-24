# $OpenBSD

COMMENT =	super simple job queue over AMQP

DISTNAME =	minion-0.1.10
REVISION =	2
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
RUN_DEPENDS =	net/ruby-amqp,${MODRUBY_FLAVOR} \
		net/ruby-bunny,${MODRUBY_FLAVOR} \
		converters/ruby-json,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
