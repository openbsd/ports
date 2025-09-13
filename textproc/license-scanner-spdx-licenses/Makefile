COMMENT =		Additional license data from SPDX for license-scanner
GH_ACCOUNT =            spdx
GH_PROJECT =            license-list-data
GH_TAGNAME =            v3.24.0
DISTNAME =		license-scanner-spdx-licenses-${GH_TAGNAME:S/v//}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/${GH_ACCOUNT}/${GH_PROJECT}

# Apache 2.0
PERMIT_PACKAGE =	Yes

LIBDATA_DIR =           ${PREFIX}/libdata/spdx_licenses
BUILD_DEPENDS =         textproc/license-scanner
RUN_DEPENDS =           textproc/license-scanner

# ignore errors as license-scanner sadly can not read all specifications
do-build:
	@echo Some templates are not imported correctly. \
	    Just ignore those errors
	@-license-scanner --addAll "${WRKDIST}" --spdx spdx${GH_TAGNAME} \
	    --spdxPath "${WRKDIR}/import" 2>&1 | grep "^Error:"

do-install:
	${INSTALL_DATA_DIR} ${LIBDATA_DIR}/json
	${INSTALL_DATA} ${WRKDIR}/import/json/* ${LIBDATA_DIR}/json
	${INSTALL_DATA_DIR} ${LIBDATA_DIR}/precheck
	${INSTALL_DATA} ${WRKDIR}/import/precheck/* ${LIBDATA_DIR}/precheck
	${INSTALL_DATA_DIR} ${LIBDATA_DIR}/template
	${INSTALL_DATA} ${WRKDIR}/import/template/* ${LIBDATA_DIR}/template
	${INSTALL_DATA_DIR} ${LIBDATA_DIR}/testdata/invalid
	${INSTALL_DATA} ${WRKDIR}/import/testdata/*.* ${LIBDATA_DIR}/testdata
	${INSTALL_DATA} ${WRKDIR}/import/testdata/invalid/* \
	    ${LIBDATA_DIR}/testdata/invalid

NO_TEST =	Yes

.include <bsd.port.mk>
