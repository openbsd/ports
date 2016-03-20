# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:19 naddy Exp $

COMMENT =	datetime sets and set math

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DateTime-Set-0.3600
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		devel/p5-DateTime \
			devel/p5-Params-Validate \
			devel/p5-Set-Infinite

BUILD_DEPENDS =		${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-DateTime-Event-Recurrence

.include <bsd.port.mk>
