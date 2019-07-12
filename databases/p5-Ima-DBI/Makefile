# $OpenBSD: Makefile,v 1.10 2019/07/12 20:43:57 sthen Exp $

COMMENT=	database connection caching and organization

DISTNAME=	Ima-DBI-0.35
REVISION=	0
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
