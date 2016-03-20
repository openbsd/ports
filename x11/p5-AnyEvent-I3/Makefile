# $OpenBSD: Makefile,v 1.10 2016/03/20 19:57:23 naddy Exp $

COMMENT =		communicate with the i3 window manager

DISTNAME =		AnyEvent-I3-0.16

REVISION =		0

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
