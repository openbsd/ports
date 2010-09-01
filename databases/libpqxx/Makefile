# $OpenBSD: Makefile,v 1.8 2010/09/01 09:17:43 sthen Exp $

COMMENT=	C++ client API for PostgreSQL

DISTNAME=	libpqxx-2.5.3
REVISION=	0
CATEGORIES=	databases
SHARED_LIBS +=	pqxx                 1.0      # .0.0

HOMEPAGE=	http://gborg.postgresql.org/project/libpqxx/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += pq.>=4

MASTER_SITES=	http://gborg.postgresql.org/download/libpqxx/stable/ \
		ftp://gborg.postgresql.org/pub/libpqxx/stable/

LIB_DEPENDS=	:postgresql-client-*:databases/postgresql

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

# Regression tests connect to real database
NO_REGRESS=	Yes

.include <bsd.port.mk>
