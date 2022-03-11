COMMENT =	SQL parsing and processing engine

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	SQL-Statement-1.414
CATEGORIES =	databases

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Clone>=0.30 \
		devel/p5-Module-Runtime \
		devel/p5-Params-Util>=1.0

# An optional run dependency but makes one function work
RUN_DEPENDS +=	devel/p5-Math-Base-Convert

TEST_DEPENDS =	devel/p5-Math-Base-Convert \
		devel/p5-Test-Deep \
		textproc/p5-Text-Soundex>=3.04

.include <bsd.port.mk>

