# $OpenBSD: Makefile,v 1.4 2021/10/17 12:31:19 pvk Exp $

COMMENT =		VMware vSphere Automation SDK for Python

MODPY_EGG_VERSION =	7.0.3.0
GH_ACCOUNT =		vmware
GH_PROJECT =		vsphere-automation-sdk-python
GH_TAGNAME =		v7.0.3.0

PKGNAME =		py-vsphere-automation-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/vmware/vsphere-automation-sdk-python

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

BUILD_DEPENDS =		devel/py-pip${MODPY_FLAVOR} \
			sysutils/py-vmomi${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-pip${MODPY_FLAVOR} \
			sysutils/py-vmomi${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-codestyle${MODPY_FLAVOR}

MAKE_ENV =		PYTHONPATH=${WRKINST}/${MODPY_SITEPKG}

FLAVORS =		python3
FLAVOR =		python3

pre-build:
	@cd ${WRKSRC}/lib/ && \
		find . -name \*.whl -exec \
		env ${MAKE_ENV} pip${MODPY_VERSION} install \
		--no-cache-dir --no-index --no-warn-script-location \
		--prefix=${PREFIX} --root=${DESTDIR} {} +

.include <bsd.port.mk>
