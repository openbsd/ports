# $OpenBSD: Makefile,v 1.4 2016/04/22 22:25:53 sthen Exp $

COMMENT =	Python library for OAuth

MODPY_EGG_VERSION = 1.1.0

DISTNAME =	py-oauthlib-${MODPY_EGG_VERSION}
DISTFILES =	${DISTNAME}{${MODPY_EGG_VERSION}}.tar.gz
WRKDIST =	${WRKDIR}/oauthlib-${MODPY_EGG_VERSION}

CATEGORIES =	security
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =  Yes

MASTER_SITES =	https://github.com/idan/oauthlib/archive/

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =	devel/py-blinker${MODPY_FLAVOR} \
		security/py-cryptography${MODPY_FLAVOR} \
		www/py-jwt${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-nose${MODPY_FLAVOR} \
		devel/py-coverage${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		${RUN_DEPENDS}

FLAVORS =	python3
FLAVOR ?=

post-extract:
	chmod -R o+rX ${WRKSRC}

# tests/oauth2/rfc5849/endpoints/test_error_responses.py
# will through a warning when make test is run under
# the python3 flavor, fixing this breaks python2 though.
do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
