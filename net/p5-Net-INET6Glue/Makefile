# $OpenBSD: Makefile,v 1.4 2010/12/03 11:45:42 ajacoutot Exp $

COMMENT =		make common perl modules IPv6 ready by hotpatching

DISTNAME =		Net-INET6Glue-0.4
REVISION =		0

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
