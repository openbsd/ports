# $OpenBSD: Makefile,v 1.2 2004/01/17 15:58:07 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"access to PostgreSQL databases perl"

VERSION=	1.9.0
DISTNAME=	pgsql_perl5-${VERSION}
PKGNAME=	p5-pgsql-${VERSION}
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Pg/}

LIB_DEPENDS=	pq.2::databases/postgresql

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
