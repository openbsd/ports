# $OpenBSD: Makefile,v 1.1.1.1 2015/06/26 07:37:13 landry Exp $

COMMENT =	Python library for OAuth

V =		0.20150523
GH_ACCOUNT =	idan
GH_PROJECT =	oauthlib
GH_COMMIT =	16cd3b255b2c86ec7da412357cad899c72d8dbf7
DISTNAME =	py-${GH_PROJECT}-$V
CATEGORIES =	security
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =  Yes

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
