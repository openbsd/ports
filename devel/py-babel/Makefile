# $OpenBSD: Makefile,v 1.31 2020/07/03 21:12:40 sthen Exp $

COMMENT=		I18N/L10N tools for Python

MODPY_EGG_VERSION=	2.8.0
DISTNAME=		Babel-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
CATEGORIES=    		devel
REVISION=		0

HOMEPAGE=		http://babel.pocoo.org/

# BSD
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

RUN_DEPENDS=		devel/py-tz${MODPY_FLAVOR}
TEST_DEPENDS=		devel/py-freezegun${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR?=

post-install:
	mv ${PREFIX}/bin/pybabel{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
