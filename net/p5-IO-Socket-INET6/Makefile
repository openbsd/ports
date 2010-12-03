# $OpenBSD: Makefile,v 1.9 2010/12/03 11:45:41 ajacoutot Exp $

COMMENT =		object interface for AF_INET and AF_INET6 domain sockets

DISTNAME =		IO-Socket-INET6-2.65
REVISION =		0

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/p5-Socket6>=0.12
REGRESS_DEPENDS =	devel/p5-Test-Pod-Coverage devel/p5-Test-Pod
USE_GROFF =		Yes

.include <bsd.port.mk>
