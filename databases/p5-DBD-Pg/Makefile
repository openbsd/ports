# $OpenBSD: Makefile,v 1.33 2004/01/17 15:58:07 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"access to PostgreSQL databases through the DBI"

VERSION=	1.01
DISTNAME=	DBD-Pg-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBD/}

LIB_DEPENDS=	pq.2::databases/postgresql
BUILD_DEPENDS=	::databases/p5-DBI

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
