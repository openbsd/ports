# $OpenBSD: Makefile,v 1.5 2012/01/29 02:44:10 william Exp $

COMMENT =	ssh wrapper to execute remote interactive commands

DISTNAME =	Net-SSH-Expect-1.09
REVISION =	1
CATEGORIES =	net
MODULES =	cpan

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Expect

.include <bsd.port.mk>
