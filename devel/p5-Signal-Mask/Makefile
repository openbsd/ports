# $OpenBSD: Makefile,v 1.3 2019/05/01 19:57:07 sthen Exp $

COMMENT =		utility functions dealing with signals

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Signal-Mask-0.008
CATEGORIES =		devel
REVISION =		0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-IPC-Signal

.include <bsd.port.mk>
