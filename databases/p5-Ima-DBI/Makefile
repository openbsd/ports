# $OpenBSD: Makefile,v 1.11 2020/07/03 21:44:37 sthen Exp $

COMMENT=	database connection caching and organization

DISTNAME=	Ima-DBI-0.35
REVISION=	1
CATEGORIES=	databases
MODULES=	cpan
PKG_ARCH=	*

# Same as Perl
PERMIT_PACKAGE=	Yes

CPAN_AUTHOR=	PERRIN

RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-DBIx-ContextualFetch \
		devel/p5-Class-Data-Inheritable

.include <bsd.port.mk>
