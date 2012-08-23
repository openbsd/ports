# $OpenBSD: Makefile,v 1.57 2012/08/23 14:54:31 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	unified perl interface for database access

MODULES=	cpan
DISTNAME=	DBI-1.616
REVISION=	0
CATEGORIES=	databases
USE_GROFF=	Yes

HOMEPAGE=	http://dbi.perl.org/
MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

RUN_DEPENDS=	net/p5-PlRPC>=0.2017 \
		databases/p5-SQL-Statement>=1.28 \
		devel/p5-MLDBM
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
