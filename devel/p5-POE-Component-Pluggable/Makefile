# $OpenBSD: Makefile,v 1.16 2019/07/12 20:45:03 sthen Exp $

COMMENT =		base class for creating plugin enabled POE Components

DISTNAME =		POE-Component-Pluggable-1.28
CATEGORIES =		devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-POE>=1.004 \
			devel/p5-Task-Weaken

MAKE_ENV =		TEST_POD=Yes

PKG_ARCH =		*

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
