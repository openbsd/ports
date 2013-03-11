# $OpenBSD: Makefile,v 1.8 2013/03/11 02:52:07 espie Exp $

COMMENT=	portability layer for LIMIT emulation

DISTNAME=	SQL-Abstract-Limit-0.141
CATEGORIES=	databases
MODULES=	cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-SQL-Abstract \
		databases/p5-DBI
TEST_DEPENDS=devel/p5-Test-Exception

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
