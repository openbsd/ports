# $OpenBSD: Makefile,v 1.1.1.1 2014/03/16 21:50:26 afresh1 Exp $

COMMENT =	detect if English number is ordinal or cardinal
DISTNAME =	Lingua-EN-Number-IsOrdinal-0.04
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <andrew@cpan.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
RUN_DEPENDS =	textproc/p5-Lingua-EN-FindNumber
TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Try-Tiny

.include <bsd.port.mk>
