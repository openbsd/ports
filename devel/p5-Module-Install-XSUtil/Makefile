# $OpenBSD: Makefile,v 1.5 2020/07/03 21:45:00 sthen Exp $

COMMENT =		utility functions for XS modules

DISTNAME =		Module-Install-XSUtil-0.45
REVISION =		1
CATEGORIES =		devel

# perl
PERMIT_PACKAGE =	Yes

MODULES +=		cpan
PKG_ARCH =		*

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/p5-Module-Install

# Requires another handfull of unported modules.
NO_TEST =		Yes

.include <bsd.port.mk>
