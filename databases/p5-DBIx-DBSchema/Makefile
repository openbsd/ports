# $OpenBSD: Makefile,v 1.8 2010/12/03 11:44:24 ajacoutot Exp $

COMMENT=	database-independent schema objects

DISTNAME=	DBIx-DBSchema-0.32
REVISION=	1
CATEGORIES=	databases
MODULES=	cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-FreezeThaw \
		databases/p5-DBI

.include <bsd.port.mk>
