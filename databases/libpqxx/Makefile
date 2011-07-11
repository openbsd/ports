# $OpenBSD: Makefile,v 1.10 2011/07/11 21:10:33 sthen Exp $

COMMENT=	C++ client API for PostgreSQL

DISTNAME=	libpqxx-2.5.3
REVISION=	1
CATEGORIES=	databases
SHARED_LIBS +=	pqxx                 1.0      # .0.0

HOMEPAGE=	http://pqxx.org/development/libpqxx/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += pq>=4

MASTER_SITES=	http://pqxx.org/download/software/libpqxx/ \
		ftp://pqxx.org/software/libpqxx/

LIB_DEPENDS=	databases/postgresql

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

# Regression tests connect to real database
NO_REGRESS=	Yes

.include <bsd.port.mk>
