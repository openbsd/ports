# $OpenBSD: Makefile,v 1.12 2019/07/12 20:44:51 sthen Exp $

COMMENT =	datetime sets and set math

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DateTime-Set-0.3900
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =		devel/p5-DateTime \
			devel/p5-Params-Validate \
			devel/p5-Set-Infinite

BUILD_DEPENDS =		${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-DateTime-Event-Recurrence

.include <bsd.port.mk>
