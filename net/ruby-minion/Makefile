# $OpenBSD

COMMENT =	super simple job queue over AMQP

DISTNAME =	minion-0.1.8
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	net

MAINTAINER =	Mathieu Sauve-Frankel <msf@openbsd.org>

# No license in distfile
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

MASTER_SITES =	${MASTER_SITE_GEMCUTTER}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::net/ruby-amqp \
		::net/ruby-bunny \
		::converters/ruby-json

.include <bsd.port.mk>
