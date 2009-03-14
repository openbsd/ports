# $OpenBSD: Makefile,v 1.3 2009/03/14 12:24:48 espie Exp $

COMMENT =	simple PostgreSQL GUI front end

MODPY_EGG_VERSION = 1.9
DISTNAME =	pgworksheet-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME}p0
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

RUN_DEPENDS =	::x11/py-gtk2 \
		::databases/py-pgsql \
		:desktop-file-utils-*:devel/desktop-file-utils

USE_X11 =	Yes

NO_REGRESS = 	Yes

.include <bsd.port.mk>
