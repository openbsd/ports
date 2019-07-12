# $OpenBSD: Makefile,v 1.10 2019/07/12 20:43:57 sthen Exp $

COMMENT=	reserved words in SQL and specific databases

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	SQL-ReservedWords-0.8
CATEGORIES=	databases

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild

MAKE_ENV=		TEST_POD=Yes
RUN_DEPENDS=		devel/p5-Sub-Exporter

.include <bsd.port.mk>
