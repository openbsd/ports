# $OpenBSD: Makefile,v 1.5 2012/05/14 10:08:54 sthen Exp $

COMMENT =	event loop and event-driven async socket base class

MODULES =	cpan
DISTNAME =	Danga-Socket-1.61
REVISION =	1

CATEGORIES =	net

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	devel/p5-IO-KQueue \
		sysutils/p5-Sys-Syscall

.include <bsd.port.mk>
