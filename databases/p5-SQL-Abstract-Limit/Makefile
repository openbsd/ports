# $OpenBSD: Makefile,v 1.9 2015/01/21 14:05:46 sthen Exp $

COMMENT=	portability layer for LIMIT emulation

DISTNAME=	SQL-Abstract-Limit-0.141
CATEGORIES=	databases
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-SQL-Abstract \
		databases/p5-DBI
TEST_DEPENDS=devel/p5-Test-Exception

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
