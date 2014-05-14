# $OpenBSD: Makefile,v 1.16 2014/05/14 14:23:43 afresh1 Exp $

COMMENT =	sql parsing and processing

MODULES =	cpan
DISTNAME =	SQL-Statement-1.405
CATEGORIES =	databases

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Clone>=0.30 \
		devel/p5-Params-Util>=1.00

# Optional depends to avoid skipping tests
TEST_DEPENDS +=	devel/p5-Test-Pod>=1.00 \
		devel/p5-Test-Pod-Coverage>=1.00

.include <bsd.port.mk>

