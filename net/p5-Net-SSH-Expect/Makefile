# $OpenBSD: Makefile,v 1.2 2010/10/18 18:36:54 espie Exp $

COMMENT =	ssh wrapper to execute remote interactive commands

DISTNAME =	Net-SSH-Expect-1.09
CATEGORIES =	net
MODULES =	cpan
USE_GROFF =	Yes

MAINTAINER =	William Yodlowsky <bsd@openbsd.rutgers.edu>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::devel/p5-Expect

.include <bsd.port.mk>
