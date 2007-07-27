# $OpenBSD: Makefile,v 1.3 2007/07/27 20:22:37 simon Exp $

COMMENT=	database connection caching and organization

DISTNAME=	Ima-DBI-0.35
CATEGORIES=	databases
MODULES=	cpan

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	PERRIN

RUN_DEPENDS=	::databases/p5-DBI \
		::databases/p5-DBIx-ContextualFetch \
		::devel/p5-Class-Data-Inheritable

.include <bsd.port.mk>
