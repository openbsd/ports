# $OpenBSD: Makefile,v 1.12 2021/11/02 00:02:22 sthen Exp $

COMMENT =		simple, pythonic tool for remote execution and deployment

MODPY_EGG_VERSION =	2.6.0
DISTNAME =		fabric-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://www.fabfile.org/

MAINTAINER =		Pablo Mendez Hernandez <pablomh@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		security/py-paramiko${MODPY_FLAVOR} \
			devel/py-invoke${MODPY_FLAVOR}
TEST_DEPENDS =		www/py-jinja2${MODPY_FLAVOR} \
			devel/py-test-relaxed${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

PORTHOME =		${WRKSRC}

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m pytest -v -rs \
		-k 'not python_dash_m_acts_like_fab'

.include <bsd.port.mk>
