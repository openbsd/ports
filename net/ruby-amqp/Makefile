# $OpenBSD: Makefile,v 1.1.1.1 2009/11/22 00:19:03 msf Exp $

COMMENT =	simple AMQP driver for Ruby

DISTNAME =	amqp-0.6.4
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	net

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	${MASTER_SITE_GEMCUTTER}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::net/ruby-eventmachine

.include <bsd.port.mk>
