# $OpenBSD: Makefile,v 1.6 2013/03/11 02:52:07 espie Exp $

COMMENT=	reserved words in SQL and specific databases

MODULES=	cpan
DISTNAME=	SQL-ReservedWords-0.7
REVISION=	0
CATEGORIES=	databases
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

MAKE_ENV=		TEST_POD=Yes
RUN_DEPENDS=		devel/p5-Sub-Exporter

.include <bsd.port.mk>
