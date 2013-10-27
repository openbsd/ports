# $OpenBSD: Makefile,v 1.4 2013/10/27 13:35:34 landry Exp $

COMMENT =	monitor PostgreSQL activity & statistics
SHARED_ONLY =	Yes

DISTNAME =	pg_statsinfo-2.4.1
CATEGORIES =	databases
REVISION =	0

HOMEPAGE =	http://pgstatsinfo.projects.pgfoundry.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://pgfoundry.org/frs/download.php/3429/

USE_GMAKE =	Yes
MAKE_FLAGS =	USE_PGXS=1 CFLAGS="-DPG_USE_INLINE" LDFLAGS=-lkvm

BUILD_DEPENDS =	databases/postgresql,-server
LIB_DEPENDS =	databases/postgresql

WANTLIB += c crypto kvm m pq pthread readline ssl termcap xml2 z

.include <bsd.port.mk>
