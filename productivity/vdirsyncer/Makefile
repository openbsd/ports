# $OpenBSD: Makefile,v 1.5 2017/10/16 21:41:24 remi Exp $

COMMENT =		synchronize calendars and contacts

MODPY_EGG_VERSION =	0.16.3
DISTNAME =		vdirsyncer-${MODPY_EGG_VERSION}
CATEGORIES =		productivity

HOMEPAGE =		https://vdirsyncer.pimutils.org/

MAINTAINER =		Remi Locherer <remi.locherer@relo.ch>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR} \
			devel/py-setuptools_scm${MODPY_FLAVOR} \
			${RUN_DEPENDS}

RUN_DEPENDS =		devel/py-atomicwrites${MODPY_FLAVOR} \
			devel/py-click-log${MODPY_FLAVOR}>=0.2.0 \
			devel/py-click-threading${MODPY_FLAVOR} \
			www/py-requests-toolbelt${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-test-localserver${MODPY_FLAVOR} \
			devel/py-test-subtesthack${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR} \
			${RUN_DEPENDS}

post-build:
	cd ${WRKSRC}/docs; ${MAKE_ENV} PYTHONPATH=${WRKSRC} \
		sphinx-build${MODPY_BIN_SUFFIX} \
		-b html -d _build/doctrees . _build/html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vdirsyncer
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vdirsyncer
	cd ${WRKSRC}; ${INSTALL_DATA} AUTHORS.rst CHANGELOG.rst \
		CONTRIBUTING.rst ISSUE_TEMPLATE.md LICENSE README.rst \
		${PREFIX}/share/doc/vdirsyncer
	cd ${WRKSRC}/docs/_build/html && \
		pax -rw * ${PREFIX}/share/doc/vdirsyncer
	${INSTALL_DATA} ${WRKSRC}/config.example \
		${PREFIX}/share/examples/vdirsyncer

do-test:
	cd ${WRKSRC}; DAV_SERVER=skip DETERMINISTIC_TESTS=true \
		${MODPY_BIN} -m pytest tests/

.include <bsd.port.mk>
