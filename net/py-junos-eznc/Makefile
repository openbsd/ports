COMMENT =		library for Junos automation

MODPY_DISTV =	2.7.0
DISTNAME =		junos-eznc-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		net

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# tests need "nose2".
# tests not present in pypi distfile, only github.
NO_TEST =		Yes

RUN_DEPENDS =		devel/py-parsing \
			devel/py-serial \
			devel/py-six \
			devel/py-transitions \
			net/py-ncclient \
			security/py-paramiko \
			security/py-scp \
			textproc/py-lxml \
			textproc/py-yaml \
			textproc/py-yamlordereddictloader \
			www/py-jinja2

.include <bsd.port.mk>
