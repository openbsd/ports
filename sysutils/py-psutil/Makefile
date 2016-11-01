# $OpenBSD: Makefile,v 1.6 2016/11/01 16:38:27 landry Exp $

COMMENT =		library to retrieve system information and utilisation

MODPY_EGG_VERSION =	4.4.2
GH_ACCOUNT =		giampaolo
GH_PROJECT =		psutil
GH_TAGNAME =		release-${MODPY_EGG_VERSION}
DISTNAME =		psutil-${MODPY_EGG_VERSION}
PKGNAME =		py-psutil-${MODPY_EGG_VERSION}
CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/giampaolo/psutil

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += kvm pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
TEST_DEPENDS =		${BUILD_PKGPATH} \
			net/py-ipaddress${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC}; ${MODPY_BIN} psutil/tests/runner.py

.include <bsd.port.mk>
