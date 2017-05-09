# $OpenBSD: Makefile,v 1.11 2017/05/09 08:07:01 benoit Exp $

COMMENT =	datetime sets and set math

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DateTime-Set-0.3900
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		devel/p5-DateTime \
			devel/p5-Params-Validate \
			devel/p5-Set-Infinite

BUILD_DEPENDS =		${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-DateTime-Event-Recurrence

.include <bsd.port.mk>
