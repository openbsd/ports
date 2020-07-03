# $OpenBSD: Makefile,v 1.11 2020/07/03 21:44:43 sthen Exp $

COMMENT =		XS implementation of parts of Class::Load

DISTNAME =		Class-Load-XS-0.10
CATEGORIES =		devel
REVISION =		1
FIX_EXTRACT_PERMISSIONS=Yes

# artistic 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Class-Load>=0.20

TEST_DEPENDS =		devel/p5-Test-Fatal \
			devel/p5-Test-Requires

.include <bsd.port.mk>
