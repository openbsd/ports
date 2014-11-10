# $OpenBSD: Makefile,v 1.9 2014/11/10 08:19:49 dcoppa Exp $

COMMENT =		communicate with the i3 window manager

DISTNAME =		AnyEvent-I3-0.16

REVISION =		0

CATEGORIES =		x11 devel

CPAN_AUTHOR =		MSTPLBG

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-AnyEvent \
			converters/p5-JSON-XS

.include <bsd.port.mk>
