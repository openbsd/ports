# $OpenBSD: Makefile,v 1.29 2014/07/12 15:35:53 giovanni Exp $

COMMENT=		Berkeley DB module
SHARED_ONLY=		Yes

DISTNAME=		BerkeleyDB-0.54
CATEGORIES=		databases
MODULES=		cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c lib/db4/db>=4

CONFIGURE_ENV+=		BERKELEYDB_INCLUDE=${LOCALBASE}/include/db4 \
			BERKELEYDB_LIB=${LOCALBASE}/lib/db4

LIB_DEPENDS =		databases/db/v4
MAKE_ENV =		TEST_POD=1
TEST_DEPENDS =	devel/p5-MLDBM

.include <bsd.port.mk>
