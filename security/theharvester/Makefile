COMMENT =	information gathering suite

VERSION =	3.0.6
DISTNAME =	theharvester-${VERSION}
REVISION =	7

GH_ACCOUNT =	laramies
GH_PROJECT =	theHarvester
GH_TAGNAME =	${VERSION}

CATEGORIES =	security

HOMEPAGE =	http://www.edge-security.com/theharvester.php

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

FIX_CRLF_FILES =	discovery/dnssearch.py \
			discovery/googlesearch.py \
			discovery/wfuzz_search.py

MODULES =	lang/python

RUN_DEPENDS =	www/py-requests \
		www/py-beautifulsoup4

MODPY_ADJ_FILES =	theHarvester.py

NO_BUILD =	Yes
# BUILD_DEPENDS with NO_BUILD is a special case
BUILD_DEPENDS =	lang/python/3

INSTDIR =	${PREFIX}/share/theharvester

pre-configure:
.for f in dnssearch googlesearch wfuzz_search
	${SUBST_CMD} ${WRKSRC}/discovery/$f.py
.endfor

do-test:
	cd ${WRKSRC} && PYTHONPATH=. ${MODPY_BIN} tests/myparser_test.py

do-install:
	rm ${WRKDIST}/.gitignore ${WRKSRC}/discovery/*{${PATCHORIG},.beforesubst}
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/theHarvester.py
	ln -s ${TRUEPREFIX}/share/theharvester/theHarvester.py ${PREFIX}/bin/theHarvester
	${MODPY_COMPILEALL} ${INSTDIR}

.include <bsd.port.mk>
