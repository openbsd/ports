# $OpenBSD: Makefile,v 1.7 2021/11/02 00:02:18 sthen Exp $

COMMENT =		PGP packet parser library for Python

MODPY_EGG_VERSION =	1.5
DISTNAME =		pgpdump-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		security

HOMEPAGE =		https://github.com/toofishes/python-pgpdump

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

# test_parse_partial_length fails due to a missing file in the sources
do-test:
	cd ${WRKSRC} && ${MAKE_ENV} \
	PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} pgpdump/test.py

test: fake

.include <bsd.port.mk>
