# $OpenBSD: Makefile,v 1.7 2015/01/21 14:27:57 sthen Exp $

COMMENT =	datetime sets and set math

MODULES =	cpan
DISTNAME =	DateTime-Set-0.28
REVISION =	0
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-DateTime \
			devel/p5-Params-Validate \
			devel/p5-Set-Infinite

BUILD_DEPENDS =		${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-DateTime-Event-Recurrence

.include <bsd.port.mk>
