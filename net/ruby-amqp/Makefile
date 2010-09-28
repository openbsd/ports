# $OpenBSD: Makefile,v 1.3 2010/09/28 21:40:13 jeremy Exp $

COMMENT =	simple AMQP driver for Ruby

DISTNAME =	amqp-0.6.4
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
CATEGORIES =	net

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::net/ruby-eventmachine

.include <bsd.port.mk>
