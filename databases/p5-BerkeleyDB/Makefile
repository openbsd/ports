# $OpenBSD: Makefile,v 1.35 2022/02/16 21:09:28 bluhm Exp $

COMMENT =	Berkeley DB module

DISTNAME =	BerkeleyDB-0.64

CATEGORIES =	databases

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c lib/db4/db>=4 perl

MODULES =		cpan

LIB_DEPENDS =		databases/db/v4
TEST_DEPENDS =		devel/p5-MLDBM \
			devel/p5-Test-CPAN-Meta

MAKE_ENV =		TEST_POD=1

CONFIGURE_ENV =		BERKELEYDB_INCLUDE=${LOCALBASE}/include/db4 \
			BERKELEYDB_LIB=${LOCALBASE}/lib/db4

.include <bsd.port.mk>
