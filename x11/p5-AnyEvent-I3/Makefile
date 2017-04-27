# $OpenBSD: Makefile,v 1.11 2017/04/27 13:31:33 dcoppa Exp $

COMMENT =		communicate with the i3 window manager

DISTNAME =		AnyEvent-I3-0.17

CATEGORIES =		x11 devel

CPAN_AUTHOR =		MSTPLBG

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-AnyEvent \
			converters/p5-JSON-XS

.include <bsd.port.mk>
