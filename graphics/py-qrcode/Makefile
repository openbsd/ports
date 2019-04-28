# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:41 sthen Exp $

COMMENT =		QR Code image generator

MODPY_EGG_VERSION =	6.1
DISTNAME =		qrcode-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		graphics textproc

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-mock${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/qr ${PREFIX}/bin/qr${MODPY_BIN_SUFFIX}
	mv ${PREFIX}/man/man1/qr.1 ${PREFIX}/man/man1/qr${MODPY_BIN_SUFFIX}.1

.include <bsd.port.mk>
