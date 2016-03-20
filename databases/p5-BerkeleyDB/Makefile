# $OpenBSD: Makefile,v 1.31 2016/03/20 19:56:08 naddy Exp $

COMMENT=		Berkeley DB module

DISTNAME=		BerkeleyDB-0.55
CATEGORIES=		databases
MODULES=		cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += lib/db4/db>=4 perl

CONFIGURE_ENV+=		BERKELEYDB_INCLUDE=${LOCALBASE}/include/db4 \
			BERKELEYDB_LIB=${LOCALBASE}/lib/db4

LIB_DEPENDS =		databases/db/v4
MAKE_ENV =		TEST_POD=1
TEST_DEPENDS =		devel/p5-MLDBM

.include <bsd.port.mk>
