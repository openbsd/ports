# $OpenBSD: Makefile,v 1.7 2010/11/15 00:22:53 espie Exp $

COMMENT =	simple PostgreSQL GUI front end

MODPY_EGG_VERSION = 1.9
DISTNAME =	pgworksheet-${MODPY_EGG_VERSION}
REVISION =	2

CATEGORIES =	databases

HOMEPAGE =	http://pgworksheet.projects.postgresql.org/

MAINTAINER =	Pierre-Emmanuel Andre <pea@raveland.org>

# GPLv2
PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes

MASTER_SITES =	http://pgfoundry.org/frs/download.php/1695/

EXTRACT_SUFX =	.tar.bz2

MODULES =	lang/python

RUN_DEPENDS =	x11/py-gtk2 \
		databases/py-pgsql \
		devel/desktop-file-utils


NO_REGRESS = 	Yes

.include <bsd.port.mk>
