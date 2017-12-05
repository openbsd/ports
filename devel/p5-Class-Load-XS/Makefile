# $OpenBSD: Makefile,v 1.9 2017/12/05 16:25:45 espie Exp $

COMMENT =		XS implementation of parts of Class::Load

DISTNAME =		Class-Load-XS-0.10
CATEGORIES =		devel
REVISION =		0
FIX_EXTRACT_PERMISSIONS=Yes

# artistic 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Class-Load>=0.20

TEST_DEPENDS =		devel/p5-Test-Fatal \
			devel/p5-Test-Requires

.include <bsd.port.mk>
