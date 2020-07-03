# $OpenBSD: Makefile,v 1.9 2020/07/03 21:45:31 sthen Exp $

COMMENT =	event loop and event-driven async socket base class

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Danga-Socket-1.61
REVISION =	2

CATEGORIES =	net

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-IO-KQueue \
		sysutils/p5-Sys-Syscall

.include <bsd.port.mk>
