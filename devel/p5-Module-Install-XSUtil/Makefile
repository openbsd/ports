# $OpenBSD: Makefile,v 1.2 2014/03/20 13:53:09 jasper Exp $

COMMENT =		utility functions for XS modules

DISTNAME =		Module-Install-XSUtil-0.45
REVISION =		0
CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES +=		cpan

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/p5-Module-Install

# Requires another handfull of unported modules.
NO_TEST =		Yes

.include <bsd.port.mk>
