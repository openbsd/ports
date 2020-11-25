# $OpenBSD: Makefile,v 1.13 2020/11/25 08:12:52 benoit Exp $

COMMENT=	portability layer for LIMIT emulation

DISTNAME =	SQL-Abstract-Limit-0.142
CATEGORIES=	databases
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-SQL-Abstract \
		databases/p5-DBI
TEST_DEPENDS =	devel/p5-Test-Exception \
		devel/p5-Test-Deep

.include <bsd.port.mk>
