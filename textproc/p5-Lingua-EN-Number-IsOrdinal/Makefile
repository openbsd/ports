# $OpenBSD: Makefile,v 1.2 2014/11/01 19:59:16 jasper Exp $

COMMENT =	detect if English number is ordinal or cardinal
DISTNAME =	Lingua-EN-Number-IsOrdinal-0.04
REVISION =	0
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
RUN_DEPENDS =	textproc/p5-Lingua-EN-FindNumber
TEST_DEPENDS =	devel/p5-Test-Fatal \
		devel/p5-Try-Tiny

.include <bsd.port.mk>
