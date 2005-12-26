# $OpenBSD: Makefile,v 1.2 2005/12/26 21:32:01 sturm Exp $

COMMENT=	"C++ client API for PostgreSQL"

DISTNAME=	libpqxx-2.5.3
CATEGORIES=	databases
SHARED_LIBS=	pqxx	0.0
MODGNU_SHARED_LIBS=pqxx ''
LIBpqxx_ALIAS=	realpqxx

HOMEPAGE=	http://gborg.postgresql.org/project/libpqxx/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://gborg.postgresql.org/download/libpqxx/stable/ \
		ftp://gborg.postgresql.org/pub/libpqxx/stable/

LIB_DEPENDS=	pq.4:postgresql-client-*:databases/postgresql

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

# Regression tests connect to real database
NO_REGRESS=	Yes

.include <bsd.port.mk>
