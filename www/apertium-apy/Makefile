COMMENT =	apertium text translation API in Python

DISTNAME =	apertium-apy-${MODPY_EGG_VERSION}

MODPY_EGG_VERSION =	0.12.0
REVISION =		0

CATEGORIES =	www

HOMEPAGE =	http://wiki.apertium.org/wiki/Apertium-apy

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv3 only
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
BUILD_DEPENDS =		databases/sqlite3 \
			www/py-tornado${MODPY_FLAVOR}
RUN_DEPENDS =		textproc/apertium-lex-tools \
			textproc/apertium-streamparser \
			textproc/py-chardet${MODPY_FLAVOR} \
			textproc/vislcg3 \
			www/py-requests${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

TEST_ENV =		LC_ALL=en_US.UTF-8

.include <bsd.port.mk>
