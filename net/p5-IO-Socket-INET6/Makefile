# $OpenBSD: Makefile,v 1.5 2010/05/31 18:58:27 bluhm Exp $

COMMENT =		object interface for AF_INET and AF_INET6 domain sockets

DISTNAME =		IO-Socket-INET6-2.63

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:p5-Socket6->=0.12:net/p5-Socket6
REGRESS_DEPENDS =	::devel/p5-Test-Pod-Coverage ::devel/p5-Test-Pod

.include <bsd.port.mk>
