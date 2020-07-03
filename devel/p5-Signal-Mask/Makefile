# $OpenBSD: Makefile,v 1.5 2020/07/03 21:45:09 sthen Exp $

COMMENT =		utility functions dealing with signals

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Signal-Mask-0.008
CATEGORIES =		devel
REVISION =		1

# Perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-IPC-Signal

.include <bsd.port.mk>
