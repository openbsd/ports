# $OpenBSD: Makefile,v 1.2 2010/10/18 18:36:53 espie Exp $

COMMENT =		make common perl modules IPv6 ready by hotpatching

DISTNAME =		Net-INET6Glue-0.4

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
USE_GROFF =	Yes
RUN_DEPENDS =		::net/p5-IO-Socket-INET6

.include <bsd.port.mk>
