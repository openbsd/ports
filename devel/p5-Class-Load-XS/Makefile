# $OpenBSD: Makefile,v 1.8 2017/09/23 10:51:07 sthen Exp $

COMMENT =		XS implementation of parts of Class::Load

DISTNAME =		Class-Load-XS-0.10
CATEGORIES =		devel
REVISION =		0

# artistic 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Class-Load>=0.20

TEST_DEPENDS =		devel/p5-Test-Fatal \
			devel/p5-Test-Requires

.include <bsd.port.mk>
