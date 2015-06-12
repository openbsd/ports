# $OpenBSD: Makefile,v 1.13 2015/06/12 12:55:32 benoit Exp $

COMMENT =		base class for creating plugin enabled POE Components

DISTNAME =		POE-Component-Pluggable-1.26
CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-POE>=1.0002 \
			devel/p5-Task-Weaken

MAKE_ENV +=		TEST_POD=Yes

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
