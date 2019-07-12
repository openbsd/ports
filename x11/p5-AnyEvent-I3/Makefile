# $OpenBSD: Makefile,v 1.13 2019/07/12 20:51:18 sthen Exp $

COMMENT =		communicate with the i3 window manager

DISTNAME =		AnyEvent-I3-0.17
REVISION =		0

CATEGORIES =		x11 devel

CPAN_AUTHOR =		MSTPLBG

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-AnyEvent \
			converters/p5-JSON-XS

.include <bsd.port.mk>
