# $OpenBSD: Makefile,v 1.4 2016/04/26 13:03:40 landry Exp $

COMMENT =	library to retrieve system information and utilisation

MODPY_EGG_VERSION = 4.1.0
GH_ACCOUNT =	giampaolo
GH_PROJECT =	psutil
GH_TAGNAME =	release-${MODPY_EGG_VERSION}
DISTNAME=	psutil-${MODPY_EGG_VERSION}
PKGNAME=	py-psutil-${MODPY_EGG_VERSION}
CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/giampaolo/psutil

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += kvm pthread ${MODPY_WANTLIB}

MODULES =	lang/python
TEST_DEPENDS =	${BUILD_PKGPATH} \
		net/py-ipaddress \
		devel/py-mock
MODPY_SETUPTOOLS =	Yes

do-test:
	cd ${WRKSRC}; ${MODPY_BIN} psutil/tests/runner.py

.include <bsd.port.mk>
