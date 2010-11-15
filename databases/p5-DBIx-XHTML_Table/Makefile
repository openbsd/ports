# $OpenBSD: Makefile,v 1.23 2010/11/15 00:22:52 espie Exp $

COMMENT=	create HTML table from sql queries

DISTNAME=	DBIx-XHTML_Table-1.36
CATEGORIES=	databases www
MODULES=	cpan
USE_GROFF =	Yes

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	p5-DBI->=1.20:databases/p5-DBI

REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
