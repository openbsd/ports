# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:25 ajacoutot Exp $

COMMENT=	reserved words in SQL and specific databases

MODULES=	cpan
DISTNAME=	SQL-ReservedWords-0.7
REVISION=	0
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
