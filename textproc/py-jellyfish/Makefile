# $OpenBSD: Makefile,v 1.2 2015/08/19 20:13:59 sthen Exp $

COMMENT=	Python library for approximate and phonetic string matching

MODPY_EGG_VERSION = 0.5.0
REVISION=	0

DISTNAME=	jellyfish-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=    	textproc

HOMEPAGE=	https://github.com/sunlightlabs/jellyfish

MODULES=	lang/python

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODPY_PI =	Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS =	python3
FLAVOR ?=

TEST_DEPENDS =	devel/py-test${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
NO_TEST =	Yes # requires unicodecsv for py<=3
.endif

.include <bsd.port.mk>
