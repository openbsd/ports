# $OpenBSD: Makefile,v 1.13 2020/07/03 21:44:48 sthen Exp $

COMMENT =	datetime sets and set math

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DateTime-Set-0.3900
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =		devel/p5-DateTime \
			devel/p5-Params-Validate \
			devel/p5-Set-Infinite

BUILD_DEPENDS =		${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-DateTime-Event-Recurrence

.include <bsd.port.mk>
