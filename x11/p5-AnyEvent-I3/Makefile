# $OpenBSD: Makefile,v 1.7 2014/07/11 11:21:22 dcoppa Exp $

COMMENT =		communicate with the i3 window manager

DISTNAME =		AnyEvent-I3-0.15

CATEGORIES =		x11 devel

CPAN_AUTHOR =		MSTPLBG

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-AnyEvent \
			converters/p5-JSON-XS

.include <bsd.port.mk>
