# $OpenBSD: Makefile,v 1.7 2013/03/11 02:52:06 espie Exp $

COMMENT=	database connection caching and organization

DISTNAME=	Ima-DBI-0.35
REVISION=	0
CATEGORIES=	databases
MODULES=	cpan
USE_GROFF =	Yes

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	PERRIN

RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-DBIx-ContextualFetch \
		devel/p5-Class-Data-Inheritable

.include <bsd.port.mk>
