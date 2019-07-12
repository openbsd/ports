# $OpenBSD: Makefile,v 1.11 2019/07/12 20:43:57 sthen Exp $

COMMENT=	portability layer for LIMIT emulation

DISTNAME=	SQL-Abstract-Limit-0.141
CATEGORIES=	databases
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-SQL-Abstract \
		databases/p5-DBI
TEST_DEPENDS=devel/p5-Test-Exception

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
