# $OpenBSD: Makefile,v 1.9 2019/07/12 20:49:37 sthen Exp $

COMMENT =	information gathering suite

VERSION =	3.0.6
DISTNAME =	theharvester-${VERSION}
REVISION =	1

GH_ACCOUNT =	laramies
GH_PROJECT =	theHarvester
GH_TAGNAME =	${VERSION}

CATEGORIES =	security

HOMEPAGE =	http://www.edge-security.com/theharvester.php

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =	lang/python/${MODPY_VERSION}
RUN_DEPENDS =	www/py-requests${MODPY_FLAVOR} \
		www/py-beautifulsoup4${MODPY_FLAVOR}

MODPY_ADJ_FILES =	theHarvester.py

NO_BUILD =	Yes

INSTDIR =	${PREFIX}/share/theharvester

pre-configure:
.for f in dnssearch googlesearch wfuzz_search
	${SUBST_CMD} ${WRKSRC}/discovery/$f.py
.endfor

do-test:
	cd ${WRKSRC} && PYTHONPATH=. ${MODPY_BIN} tests/myparser_test.py

do-install:
	rm ${WRKDIST}/.gitignore ${WRKSRC}/discovery/*.{orig,beforesubst}
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/theHarvester.py
	ln -s ${TRUEPREFIX}/share/theharvester/theHarvester.py ${PREFIX}/bin/theHarvester
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${INSTDIR}

.include <bsd.port.mk>
