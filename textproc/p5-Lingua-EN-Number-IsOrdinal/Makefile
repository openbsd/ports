# $OpenBSD: Makefile,v 1.3 2015/07/05 17:07:04 afresh1 Exp $

COMMENT =	detect if English number is ordinal or cardinal
DISTNAME =	Lingua-EN-Number-IsOrdinal-0.05
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
RUN_DEPENDS =	textproc/p5-Lingua-EN-FindNumber>=0
TEST_DEPENDS =	devel/p5-Test-Fatal>=0 \
		devel/p5-Try-Tiny>=0

.include <bsd.port.mk>
