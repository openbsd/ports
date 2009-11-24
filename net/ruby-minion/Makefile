# $OpenBSD

COMMENT =	super simple job queue over AMQP

DISTNAME =	minion-0.1.9
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	net

MAINTAINER =	Mathieu Sauve-Frankel <msf@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	${MASTER_SITE_GEMCUTTER}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::net/ruby-amqp \
		::net/ruby-bunny \
		::converters/ruby-json

.include <bsd.port.mk>
