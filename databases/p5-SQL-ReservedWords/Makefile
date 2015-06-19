# $OpenBSD: Makefile,v 1.8 2015/06/19 08:28:39 jasper Exp $

COMMENT=	reserved words in SQL and specific databases

MODULES=	cpan
DISTNAME=	SQL-ReservedWords-0.8
CATEGORIES=	databases

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

MAKE_ENV=		TEST_POD=Yes
RUN_DEPENDS=		devel/p5-Sub-Exporter

.include <bsd.port.mk>
