# $OpenBSD: Makefile,v 1.2 2015/11/26 07:53:30 landry Exp $

COMMENT =	library to retrieve system information and utilisation

MODPY_EGG_VERSION = 3.3.0
GH_ACCOUNT =	giampaolo
GH_PROJECT =	psutil
GH_TAGNAME =	release-${MODPY_EGG_VERSION}
DISTNAME=	psutil-${MODPY_EGG_VERSION}
PKGNAME=	py-psutil-${MODPY_EGG_VERSION}
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
