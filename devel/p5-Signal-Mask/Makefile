# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:34 naddy Exp $

COMMENT =		utility functions dealing with signals

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Signal-Mask-0.008
CATEGORIES =		devel

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-IPC-Signal

.include <bsd.port.mk>
