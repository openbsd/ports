# $OpenBSD: Makefile,v 1.6 2010/10/18 17:06:08 espie Exp $

COMMENT=	database-independent schema objects

DISTNAME=	DBIx-DBSchema-0.32
REVISION=	0
CATEGORIES=	databases
MODULES=	cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-FreezeThaw \
		::databases/p5-DBI

.include <bsd.port.mk>
