# $OpenBSD: Makefile,v 1.3 2004/07/26 10:15:28 peter Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"access to PostgreSQL databases perl"

VERSION=	1.9.0
DISTNAME=	pgsql_perl5-${VERSION}
PKGNAME=	p5-pgsql-${VERSION}
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Pg/}

LIB_DEPENDS=	pq.3:postgresql-client-*:databases/postgresql

MAINTAINER=	Markus Friedl <markus@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV+=	POSTGRES_HOME="${LOCALBASE}" \
		POSTGRES_LIB="${LOCALBASE}/lib" \
		POSTGRES_INCLUDE="${LOCALBASE}/include/postgresql"

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
