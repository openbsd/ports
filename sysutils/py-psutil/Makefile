# $OpenBSD: Makefile,v 1.1.1.1 2015/11/14 07:35:29 landry Exp $

COMMENT =	library to retrieve system information and utilisation

MODPY_EGG_VERSION = 3.3.0
GH_ACCOUNT =	giampaolo
GH_PROJECT =	psutil
GH_COMMIT =	fc1e59d08c968898c2ede425a621b62ccf44681c
DISTNAME=	psutil-${MODPY_EGG_VERSION}
PKGNAME=	py-psutil-${MODPY_EGG_VERSION}pre0
CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/giampaolo/psutil

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	lang/python
TEST_DEPENDS =	${BUILD_PKGPATH} \
		net/py-ipaddress \
		devel/py-mock
MODPY_SETUPTOOLS =	Yes

do-test:
	cd ${WRKSRC}; ${MODPY_BIN} test/test_psutil.py

.include <bsd.port.mk>
