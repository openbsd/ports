# $OpenBSD: Makefile,v 1.17 2014/06/14 23:24:54 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	access to PostgreSQL databases perl

VERSION=	1.9.0
DISTNAME=	pgsql_perl5-${VERSION}
PKGNAME=	p5-pgsql-${VERSION}
REVISION=	4
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Pg/}

LIB_DEPENDS =	databases/postgresql

MAINTAINER=	Markus Friedl <markus@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pq>=3

CONFIGURE_ENV+=	POSTGRES_HOME="${LOCALBASE}" \
		POSTGRES_LIB="${LOCALBASE}/lib" \
		POSTGRES_INCLUDE="${LOCALBASE}/include/postgresql"

CONFIGURE_STYLE=perl

# needs a database properly set up
NO_TEST=	Yes

.include <bsd.port.mk>
