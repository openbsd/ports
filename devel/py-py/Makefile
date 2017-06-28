# $OpenBSD: Makefile,v 1.30 2017/06/28 17:49:51 danj Exp $

COMMENT=		cross-python path, ini-parsing, io, code, log facilities

MODPY_EGG_VERSION =	1.4.34
DISTNAME=		py-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

TEST_DEPENDS +=		devel/py-test${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && LC_CTYPE=C.UTF-8 ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
