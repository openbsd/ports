# $OpenBSD: Makefile,v 1.1.1.1 2015/05/20 08:11:10 sthen Exp $

COMMENT=	Python library for approximate and phonetic string matching

MODPY_EGG_VERSION = 0.5.0

DISTNAME=	jellyfish-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=    	textproc

HOMEPAGE=	https://github.com/sunlightlabs/jellyfish

MODULES=	lang/python

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS =	python3
FLAVOR ?=

TEST_DEPENDS =	devel/py-test${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
NO_TEST =	Yes # requires unicodecsv for py<=3
.endif

.include <bsd.port.mk>
