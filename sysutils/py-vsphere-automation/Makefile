COMMENT =		VMware vSphere Automation SDK for Python

MODPY_EGG_VERSION =	8.0.2.0
GH_ACCOUNT =		vmware
GH_PROJECT =		vsphere-automation-sdk-python
GH_TAGNAME =		v${MODPY_EGG_VERSION}

PKGNAME =		py-vsphere-automation-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/vmware/vsphere-automation-sdk-python

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-pip${MODPY_FLAVOR} \
			sysutils/py-vmomi${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-pip${MODPY_FLAVOR} \
			devel/py-setuptools${MODPY_FLAVOR} \
			sysutils/py-vmomi${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

MAKE_ENV =		PYTHONPATH=${WRKINST}/${MODPY_SITEPKG}

FLAVORS =		python3
FLAVOR =		python3

NO_TEST =		Yes

pre-build:
	@cd ${WRKSRC}/lib/ && \
		find . -name \*.whl -exec \
		env ${MAKE_ENV} pip${MODPY_VERSION} install \
		--no-cache-dir --no-index --no-warn-script-location \
		--prefix=${PREFIX} --root=${DESTDIR} --no-dependencies {} +

.include <bsd.port.mk>
