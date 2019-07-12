# $OpenBSD: Makefile,v 1.33 2019/07/12 20:43:54 sthen Exp $

COMMENT=		Berkeley DB module

DISTNAME=		BerkeleyDB-0.55
CATEGORIES=		databases
MODULES=		cpan
REVISION=		0

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c lib/db4/db>=4 perl

CONFIGURE_ENV+=		BERKELEYDB_INCLUDE=${LOCALBASE}/include/db4 \
			BERKELEYDB_LIB=${LOCALBASE}/lib/db4

LIB_DEPENDS =		databases/db/v4
MAKE_ENV =		TEST_POD=1
TEST_DEPENDS =		devel/p5-MLDBM

.include <bsd.port.mk>
