# $OpenBSD: Makefile,v 1.3 2017/08/15 02:32:50 jasper Exp $

COMMENT =		extension to horizontally scale PostgreSQL
GH_ACCOUNT =		citusdata
GH_PROJECT =		citus
GH_TAGNAME =		v6.2.3

CATEGORIES =		databases
HOMEPAGE =		https://www.citusdata.com/

# AGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pq

LIB_DEPENDS =		databases/postgresql
BUILD_DEPENDS =		databases/postgresql,-server
RUN_DEPENDS =		databases/postgresql,-server

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
