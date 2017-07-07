# $OpenBSD: Makefile,v 1.1.1.1 2017/07/07 19:58:07 landry Exp $

COMMENT =	extension to horizontally scale PostgreSQL
GH_ACCOUNT =	citusdata
GH_PROJECT =	citus
GH_TAGNAME =	v6.2.2

CATEGORIES =	databases
HOMEPAGE =	https://www.citusdata.com/


# AGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pq

MODULES =		databases/postgresql
LIB_DEPENDS =		databases/postgresql
RUN_DEPENDS =		databases/postgresql,-server

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
