# $OpenBSD: Makefile,v 1.36 2004/07/26 10:13:28 peter Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"access to PostgreSQL databases through the DBI"

VERSION=	1.32
DISTNAME=	DBD-Pg-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBD/}

LIB_DEPENDS=	pq.2:postgresql-client-*:databases/postgresql
RUN_DEPENDS=	::databases/p5-DBI
BUILD_DEPENDS=	${RUN_DEPENDS}

FLAVOR?=
FLAVORS=	regress

.if ${FLAVOR:L:Mregress}
MAKE_ENV+=	DBI_DSN="dbi:Pg:dbname=template1" DBI_USER="_postgresql" DBI_PASS=""
.endif

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV+=	POSTGRES_HOME="${LOCALBASE}" \
		POSTGRES_LIB="${LOCALBASE}/lib" \
		POSTGRES_INCLUDE="${LOCALBASE}/include/postgresql"

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
