# $OpenBSD: Makefile,v 1.15 2018/10/24 20:21:36 bluhm Exp $

COMMENT =		base class for creating plugin enabled POE Components

DISTNAME =		POE-Component-Pluggable-1.28
CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-POE>=1.004 \
			devel/p5-Task-Weaken

MAKE_ENV =		TEST_POD=Yes

PKG_ARCH =		*

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
