# $OpenBSD: Makefile,v 1.32 2019/02/28 18:46:04 sthen Exp $

COMMENT=		cross-python path, ini-parsing, io, code, log facilities

MODPY_EGG_VERSION =	1.8.0
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

BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}
TEST_DEPENDS +=		devel/py-test${MODPY_FLAVOR}

TEST_ENV +=		LC_CTYPE=C.UTF-8

do-test:
	cd ${WRKSRC} && exec ${SETENV} ${MAKE_ENV} ${TEST_ENV} \
		${MODPY_BIN} -m pytest

.include <bsd.port.mk>
