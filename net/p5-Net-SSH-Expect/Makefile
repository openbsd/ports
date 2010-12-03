# $OpenBSD: Makefile,v 1.4 2010/12/03 11:45:42 ajacoutot Exp $

COMMENT =	ssh wrapper to execute remote interactive commands

DISTNAME =	Net-SSH-Expect-1.09
REVISION =	0
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
RUN_DEPENDS =	devel/p5-Expect

.include <bsd.port.mk>
