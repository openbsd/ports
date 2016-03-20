# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:11 naddy Exp $

COMMENT=	portability layer for LIMIT emulation

DISTNAME=	SQL-Abstract-Limit-0.141
CATEGORIES=	databases
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-SQL-Abstract \
		databases/p5-DBI
TEST_DEPENDS=devel/p5-Test-Exception

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
