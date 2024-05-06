COMMENT =		library for Junos automation

MODPY_EGG_VERSION =	2.7.0
DISTNAME =		junos-eznc-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		net

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# tests need "nose2".
# tests not present in pypi distfile, only github.
NO_TEST =		Yes

RUN_DEPENDS =		devel/py-parsing${MODPY_FLAVOR} \
			devel/py-serial${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-transitions${MODPY_FLAVOR} \
			net/py-ncclient${MODPY_FLAVOR} \
			security/py-paramiko${MODPY_FLAVOR} \
			security/py-scp${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			textproc/py-yamlordereddictloader${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}

.include <bsd.port.mk>
