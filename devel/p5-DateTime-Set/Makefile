# $OpenBSD: Makefile,v 1.8 2015/09/02 19:33:51 benoit Exp $

COMMENT =	datetime sets and set math

MODULES =	cpan
DISTNAME =	DateTime-Set-0.3400
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		devel/p5-DateTime \
			devel/p5-Params-Validate \
			devel/p5-Set-Infinite

BUILD_DEPENDS =		${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-DateTime-Event-Recurrence

.include <bsd.port.mk>
