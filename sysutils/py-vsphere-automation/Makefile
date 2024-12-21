COMMENT =		VMware vSphere Automation SDK for Python

MODPY_DISTV =	8.0.2.0
GH_ACCOUNT =		vmware
GH_PROJECT =		vsphere-automation-sdk-python
GH_TAGNAME =		v${MODPY_DISTV}

PKGNAME =		py-vsphere-automation-${MODPY_DISTV}
REVISION =		1

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/vmware/vsphere-automation-sdk-python

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-pip \
			sysutils/py-vmomi \
			security/py-openssl \
			textproc/py-lxml
RUN_DEPENDS =		devel/py-pip \
			devel/py-setuptools \
			sysutils/py-vmomi \
			security/py-openssl \
			textproc/py-lxml

MAKE_ENV =		PYTHONPATH=${WRKINST}/${MODPY_SITEPKG}

NO_TEST =		Yes

pre-build:
	@cd ${WRKSRC}/lib/ && \
		find . -name \*.whl -exec \
		env ${MAKE_ENV} pip${MODPY_VERSION} install \
		--no-cache-dir --no-index --no-warn-script-location \
		--prefix=${PREFIX} --root=${DESTDIR} --no-dependencies {} +

.include <bsd.port.mk>
