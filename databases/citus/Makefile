# $OpenBSD: Makefile,v 1.2 2017/07/08 17:21:12 ajacoutot Exp $

COMMENT =		extension to horizontally scale PostgreSQL
GH_ACCOUNT =		citusdata
GH_PROJECT =		citus
GH_TAGNAME =		v6.2.2

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
