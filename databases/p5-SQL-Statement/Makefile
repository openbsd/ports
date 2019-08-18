# $OpenBSD: Makefile,v 1.20 2019/08/18 18:51:48 afresh1 Exp $

COMMENT =	SQL parsing and processing engine

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	SQL-Statement-1.412
CATEGORIES =	databases

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Clone>=0.30 \
		devel/p5-Module-Runtime \
		devel/p5-Params-Util>=1.00

# An optional run dependency but makes one function work
RUN_DEPENDS +=	devel/p5-Math-Base-Convert

TEST_DEPENDS =	devel/p5-Math-Base-Convert \
		devel/p5-Test-Deep

.include <bsd.port.mk>

