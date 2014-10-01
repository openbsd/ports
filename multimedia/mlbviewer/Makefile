# $OpenBSD: Makefile,v 1.2 2014/10/01 09:17:57 ajacoutot Exp $

COMMENT =		collection of tools for MLB.com content and MLB.TV

Y =			2014
V =			3
DISTNAME =		mlbviewer${Y}-sf-${V}
PKGNAME =		mlbviewer-${Y}.${V}
CATEGORIES =		multimedia
HOMEPAGE =		http://sourceforge.net/p/mlbviewer/wiki/Home/
MAINTAINER =		Peter Hessler <phessler@openbsd.org>
REVISION =		0

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=mlbviewer/}
MODULES =		lang/python
RUN_DEPENDS =		net/rtmpdump \
			x11/mplayer
LIB_DEPENDS =		devel/py-gdata

MODPY_ADJ_FILES =	mlb*.py
WRKDIST =		${WRKDIR}/mlbviewer${Y}
NO_BUILD =		Yes
NO_TEST =		Yes

MLB = ${PREFIX}/libexec/mlbviewer/

do-install:
	${INSTALL_DATA_DIR} ${MLB}
	cd ${WRKDIST} && pax -rw . "${MLB}"
.for i in viewer classics play videos listings stats
	printf '#!/bin/sh\nexec ${TRUEPREFIX}/libexec/mlbviewer/mlb${i}.py $$*\n' > ${WRKBUILD}/mlb${i}
	${INSTALL_SCRIPT} ${WRKBUILD}/mlb${i} ${PREFIX}/bin/mlb${i}
.endfor
	@# Minor League Baseball
.for i in play listings
	printf '#!/bin/sh\nexec ${TRUEPREFIX}/libexec/mlbviewer/milb${i}.py $$*\n' > ${WRKBUILD}/milb${i}
	${INSTALL_SCRIPT} ${WRKBUILD}/milb${i} ${PREFIX}/bin/milb${i}
.endfor


.include <bsd.port.mk>
