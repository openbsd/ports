# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:51 naddy Exp $

COMMENT =	event loop and event-driven async socket base class

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Danga-Socket-1.61
REVISION =	1

CATEGORIES =	net

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-IO-KQueue \
		sysutils/p5-Sys-Syscall

.include <bsd.port.mk>
