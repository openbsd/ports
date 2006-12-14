# $OpenBSD: Makefile,v 1.2 2006/12/14 19:04:45 dassow Exp $

COMMENT=	"database connection caching and organization"

DISTNAME=	Ima-DBI-0.33
CATEGORIES=	databases
MODULES=	cpan

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	TMTM

RUN_DEPENDS=	::databases/p5-DBI \
		::databases/p5-DBIx-ContextualFetch \
		::devel/p5-Class-Data-Inheritable \
		::devel/p5-Class-WhiteHole \

.include <bsd.port.mk>
