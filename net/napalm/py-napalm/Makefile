COMMENT =		network automation abstraction layer

CATEGORIES +=		net net/napalm

MODPY_DISTV =		2.3.3
REVISION =		9
DISTNAME =		napalm-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

HOMEPAGE =		https://github.com/napalm-automation/napalm

# Apache 2.0
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		devel/py-pip
RUN_DEPENDS =		devel/py-cffi>=1.11.5 \
			net/py-IOSXR \
			net/py-eapi \
			net/py-netaddr \
			net/py-netmiko \
			net/py-nxos \
			net/py-junos-eznc \
			textproc/py-yaml \
			www/py-jinja2

MODULES +=		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

.include <bsd.port.mk>
