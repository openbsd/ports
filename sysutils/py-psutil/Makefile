# $OpenBSD: Makefile,v 1.15 2020/07/03 21:13:11 sthen Exp $

COMMENT =		library to retrieve system information and utilisation

MODPY_EGG_VERSION =	5.4.3
GH_ACCOUNT =		giampaolo
GH_PROJECT =		psutil
GH_TAGNAME =		release-${MODPY_EGG_VERSION}
DISTNAME =		psutil-${MODPY_EGG_VERSION}
PKGNAME =		py-psutil-${MODPY_EGG_VERSION}
CATEGORIES =		sysutils
REVISION =		3

HOMEPAGE =		https://github.com/giampaolo/psutil

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += kvm pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	${TESTLIBDIR}/psutil/tests

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if ! ${FLAVOR:Mpython3}
TEST_DEPENDS +=		net/py-ipaddress${MODPY_FLAVOR}
.endif

TESTLIBDIR =		lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}
TEST_ENV +=		PYTHONPATH=${TESTLIBDIR}

.include <bsd.port.mk>
