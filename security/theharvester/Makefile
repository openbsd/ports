# $OpenBSD: Makefile,v 1.3 2018/10/17 09:19:44 rpointel Exp $

COMMENT =	information gathering suite

VERSION =	3.0
DISTNAME =	theharvester-${VERSION}

GH_ACCOUNT =	laramies
GH_PROJECT =	theHarvester
GH_TAGNAME =	v${VERSION}

CATEGORIES =	security

HOMEPAGE =	http://www.edge-security.com/theharvester.php

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

BUILD_DEPENDS =	lang/python/${MODPY_VERSION}
RUN_DEPENDS =	www/py-requests

MODPY_ADJ_FILES =	theHarvester.py

NO_BUILD =	Yes

INSTDIR =	${PREFIX}/share/theharvester

do-test:
	cd ${WRKSRC} && PYTHONPATH=. ${MODPY_BIN} tests/myparser_test.py

do-install:
	rm ${WRKDIST}/.gitignore
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/theHarvester.py
	ln -s ${TRUEPREFIX}/share/theharvester/theHarvester.py ${PREFIX}/bin/theHarvester
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${INSTDIR}

.include <bsd.port.mk>
