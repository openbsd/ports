COMMENT =	clang static code analyzer

GH_ACCOUNT =	Ericsson
GH_PROJECT =	codechecker
GH_TAGNAME =	v6.21.0

CATEGORIES =	devel

HOMEPAGE =	https://codechecker.readthedocs.io

MAINTAINER =	Moritz Buhl <mbuhl@openbsd.org>

# Apache 2.0 WITH LLVM-exception
PERMIT_PACKAGE =	Yes

DIST_SUBDIR =	codechecker-${GH_TAGNAME}
MASTER_SITES0 =	https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.30.0/
MASTER_SITES1 =	https://raw.githubusercontent.com/codemirror/CodeMirror/master/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		codemirror.min.js:0 codemirror.min.css:0 \
		clike.min.js{/mode/clike/clike.min.js}:0 \
		codemirror.LICENSE{LICENSE}:1

EXTRACT_ONLY =	${DISTNAME}${EXTRACT_SUFX}

MODULES =	lang/python

CONFIGURE_STYLE =	none

ALL_TARGET =	package package_api
USE_GMAKE =	Yes

RUN_DEPENDS =	databases/py-alembic${MODPY_FLAVOR} \
		databases/py-sqlalchemy${MODPY_FLAVOR} \
		devel/llvm \
		devel/py-portalocker${MODPY_FLAVOR} \
		devel/py-thrift${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR}

BUILD_DEPENDS =	devel/py-pip${MODPY_FLAVOR} \
		devel/py-setuptools${MODPY_FLAVOR} \
		devel/py-wheel${MODPY_FLAVOR}

STATIC_DIR =	${WRKSRC}/tools/report-converter/codechecker_report_converter/report/output/html/static/vendor/codemirror

post-extract:
	${INSTALL_DATA_DIR} ${STATIC_DIR}
	${INSTALL_DATA} ${FULLDISTDIR}/*.{js,css,LICENSE} ${STATIC_DIR}/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config/package_layout.json

do-install:
	cp -rf ${WRKSRC}/build/CodeChecker ${PREFIX}/share/
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/CodeChecker
	ln -sf ${TRUEPREFIX}/share/CodeChecker/bin/CodeChecker \
		${PREFIX}/bin/codechecker
	find ${PREFIX}/share \( -name '*${PATCHORIG}' -or \
		-name '*.beforesubst' \) -delete

.include <bsd.port.mk>
