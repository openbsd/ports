# $OpenBSD: Makefile,v 1.21 2020/07/03 21:44:38 sthen Exp $

COMMENT =	SQL parsing and processing engine

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	SQL-Statement-1.412
CATEGORIES =	databases
REVISION =	0

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

