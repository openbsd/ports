# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:16 espie Exp $

COMMENT =	datetime sets and set math

MODULES =	cpan
DISTNAME =	DateTime-Set-0.28
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-DateTime \
			devel/p5-Params-Validate \
			devel/p5-Set-Infinite

BUILD_DEPENDS =		${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-DateTime-Event-Recurrence

.include <bsd.port.mk>
