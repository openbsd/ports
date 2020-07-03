# $OpenBSD: Makefile,v 1.11 2020/07/03 21:44:37 sthen Exp $

COMMENT=	reserved words in SQL and specific databases

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	SQL-ReservedWords-0.8
CATEGORIES=	databases
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild

MAKE_ENV=		TEST_POD=Yes
RUN_DEPENDS=		devel/p5-Sub-Exporter

.include <bsd.port.mk>
