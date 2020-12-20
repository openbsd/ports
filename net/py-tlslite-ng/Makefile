# $OpenBSD: Makefile,v 1.9 2020/12/20 04:53:20 tb Exp $

COMMENT =		Python SSL and TLS library

MODPY_EGG_VERSION =	0.8.0-alpha39
DISTNAME =		tlslite-ng-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/-alpha/alpha/}
EPOCH =			0

CATEGORIES =		net

GH_ACCOUNT =		tlsfuzzer
GH_PROJECT =		tlslite-ng
GH_TAGNAME =		v${MODPY_EGG_VERSION}

MAINTAINER =		Theo Buehler <tb@openbsd.org>

FLAVOR =		python3
FLAVORS =		python3

WANTLIB +=		${MODPY_WANTLIB}

# LGPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYTEST =		Yes

RUN_DEPENDS +=		security/py-M2Crypto${MODPY_FLAVOR} \
			security/py-ecdsa${MODPY_FLAVOR}

TEST_DEPENDS +=		devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			security/py-ecdsa${MODPY_FLAVOR}

TEST_ENV +=		PYTHONPATH=${WRKSRC}/src

.include <bsd.port.mk>
