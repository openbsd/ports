# $OpenBSD: Makefile,v 1.6 2011/04/10 23:55:42 bluhm Exp $

COMMENT =		make common perl modules IPv6 ready by hotpatching

DISTNAME =		Net-INET6Glue-0.5

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
USE_GROFF =		Yes
RUN_DEPENDS =		net/p5-IO-Socket-INET6

.include <bsd.port.mk>
