COMMENT =	Python wrapper for Telegram tdlib

MODPY_DISTV =	0.19.0

DISTNAME =	python_telegram-${MODPY_DISTV}
PKGNAME =	py-telegram-${MODPY_DISTV}

CATEGORIES =	net

HOMEPAGE =	https://github.com/alexander-akhmetov/python-telegram

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools_scm

RUN_DEPENDS =	net/tdlib \
		textproc/py-telegram-text

# remove bundled binaries
post-install:
	rm -rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/telegram/lib

.include <bsd.port.mk>
