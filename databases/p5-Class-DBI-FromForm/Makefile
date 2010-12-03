# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:24 ajacoutot Exp $

COMMENT=	update Class:DBI data from html forms

MODULES=	cpan
DISTNAME=	Class-DBI-FromForm-0.04
REVISION=	0
CATEGORIES=	www databases
USE_GROFF =	Yes

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# XXX note this can retrieve data from several sources
RUN_DEPENDS=	databases/p5-Class-DBI

.include <bsd.port.mk>
