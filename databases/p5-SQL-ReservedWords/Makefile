# $OpenBSD: Makefile,v 1.4 2010/11/15 00:22:52 espie Exp $

COMMENT=	reserved words in SQL and specific databases

MODULES=	cpan
DISTNAME=	SQL-ReservedWords-0.7
CATEGORIES=	databases
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

MAKE_ENV=		TEST_POD=Yes
RUN_DEPENDS=		devel/p5-Sub-Exporter

.include <bsd.port.mk>
