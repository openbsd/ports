# $OpenBSD: Makefile,v 1.14 2019/07/12 20:43:58 sthen Exp $

COMMENT =	simple PostgreSQL GUI front end

MODPY_EGG_VERSION = 1.9
DISTNAME =	pgworksheet-${MODPY_EGG_VERSION}
REVISION =	7

CATEGORIES =	databases

HOMEPAGE =	http://pgworksheet.projects.postgresql.org/

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =	http://pgfoundry.org/frs/download.php/1695/

EXTRACT_SUFX =	.tar.bz2

MODULES =	lang/python

RUN_DEPENDS =	x11/py-gtk2 \
		databases/py-pgsql \
		devel/desktop-file-utils

post-install:
	chmod -R a+r ${PREFIX}/share/applications ${PREFIX}/share/pixmaps

NO_TEST = 	Yes

.include <bsd.port.mk>
