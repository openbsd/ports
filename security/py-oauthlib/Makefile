# $OpenBSD: Makefile,v 1.2 2015/09/23 21:14:21 sthen Exp $

COMMENT =	Python library for OAuth

MODPY_EGG_VERSION = 1.0.3

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

RUN_DEPENDS =	devel/py-blinker \
		security/py-cryptography \
		www/py-jwt

TEST_DEPENDS =	devel/py-nose \
		devel/py-coverage \
		devel/py-mock \
		${RUN_DEPENDS}

post-extract:
	chmod -R o+rX ${WRKSRC}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
