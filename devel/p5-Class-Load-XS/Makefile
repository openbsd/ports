# $OpenBSD: Makefile,v 1.7 2017/04/28 16:37:33 benoit Exp $

COMMENT =		XS implementation of parts of Class::Load

DISTNAME =		Class-Load-XS-0.10
CATEGORIES =		devel

# artistic 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB=		perl

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Class-Load>=0.20

TEST_DEPENDS =		devel/p5-Test-Fatal \
			devel/p5-Test-Requires

.include <bsd.port.mk>
