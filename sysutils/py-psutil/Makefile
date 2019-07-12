# $OpenBSD: Makefile,v 1.13 2019/07/12 20:49:49 sthen Exp $

COMMENT =		library to retrieve system information and utilisation

MODPY_EGG_VERSION =	5.4.3
GH_ACCOUNT =		giampaolo
GH_PROJECT =		psutil
GH_TAGNAME =		release-${MODPY_EGG_VERSION}
DISTNAME =		psutil-${MODPY_EGG_VERSION}
PKGNAME =		py-psutil-${MODPY_EGG_VERSION}
CATEGORIES =		sysutils
REVISION =		2

HOMEPAGE =		https://github.com/giampaolo/psutil

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += kvm pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
TEST_DEPENDS =		${BUILD_PKGPATH} \
			devel/py-mock${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if ! ${FLAVOR:Mpython3}
TEST_DEPENDS +=		net/py-ipaddress${MODPY_FLAVOR}
.endif

.include <bsd.port.mk>
