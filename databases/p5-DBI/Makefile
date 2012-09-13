# $OpenBSD: Makefile,v 1.58 2012/09/13 09:49:39 giovanni Exp $

SHARED_ONLY=	Yes

COMMENT=	unified perl interface for database access

MODULES=	cpan
DISTNAME=	DBI-1.622
CATEGORIES=	databases

HOMEPAGE=	http://dbi.perl.org/
MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MAKE_ENV=		TEST_POD=1
RUN_DEPENDS=	net/p5-PlRPC>=0.2017 \
				databases/p5-SQL-Statement>=1.28 \
				devel/p5-MLDBM
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
