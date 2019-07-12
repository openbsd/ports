# $OpenBSD: Makefile,v 1.8 2019/07/12 20:48:35 sthen Exp $

COMMENT =	event loop and event-driven async socket base class

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Danga-Socket-1.61
REVISION =	1

CATEGORIES =	net

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-IO-KQueue \
		sysutils/p5-Sys-Syscall

.include <bsd.port.mk>
