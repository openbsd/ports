COMMENT =	Python wrapper for Telegram tdlib

MODPY_DISTV =	0.16.0

DISTNAME =	python-telegram-${MODPY_DISTV}
PKGNAME =	${DISTNAME:S/^python-/py-/}
REVISION =	1

CATEGORIES =	net

HOMEPAGE =	https://github.com/alexander-akhmetov/python-telegram

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	net/tdlib
NO_TEST =	Yes

# remove bundled binaries
post-install:
	rm -rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/telegram/lib

.include <bsd.port.mk>
