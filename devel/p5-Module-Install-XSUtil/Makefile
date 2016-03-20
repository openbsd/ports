# $OpenBSD: Makefile,v 1.3 2016/03/20 19:56:28 naddy Exp $

COMMENT =		utility functions for XS modules

DISTNAME =		Module-Install-XSUtil-0.45
REVISION =		0
CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES +=		cpan
PKG_ARCH =		*

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/p5-Module-Install

# Requires another handfull of unported modules.
NO_TEST =		Yes

.include <bsd.port.mk>
