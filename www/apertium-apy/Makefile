COMMENT =	apertium text translation API in Python

DISTNAME =	apertium_apy-${MODPY_DISTV}
PKGNAME =	apertium-apy-${MODPY_DISTV}

MODPY_DISTV =	0.13.0
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	https://wiki.apertium.org/wiki/Apertium-apy

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv3 only
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
BUILD_DEPENDS =		databases/sqlite3 \
			www/py-tornado
RUN_DEPENDS =		textproc/apertium-lex-tools \
			textproc/apertium-streamparser \
			textproc/py-chardet \
			textproc/vislcg3 \
			www/py-requests \
			www/py-tornado

TEST_ENV =		LC_ALL=en_US.UTF-8

.include <bsd.port.mk>
