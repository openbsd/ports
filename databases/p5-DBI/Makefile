# $OpenBSD: Makefile,v 1.59 2013/03/11 02:52:06 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	unified perl interface for database access

MODULES=	cpan
DISTNAME=	DBI-1.622
CATEGORIES=	databases

HOMEPAGE=	http://dbi.perl.org/
MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAKE_ENV=		TEST_POD=1
RUN_DEPENDS=	net/p5-PlRPC>=0.2017 \
				databases/p5-SQL-Statement>=1.28 \
				devel/p5-MLDBM
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
