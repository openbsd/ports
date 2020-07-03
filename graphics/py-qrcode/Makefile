# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:55 sthen Exp $

COMMENT =		QR Code image generator

MODPY_EGG_VERSION =	6.1
DISTNAME =		qrcode-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		graphics textproc

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	qrcode

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/qr ${PREFIX}/bin/qr${MODPY_BIN_SUFFIX}
	mv ${PREFIX}/man/man1/qr.1 ${PREFIX}/man/man1/qr${MODPY_BIN_SUFFIX}.1

.include <bsd.port.mk>
