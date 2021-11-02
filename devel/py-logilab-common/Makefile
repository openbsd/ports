# $OpenBSD: Makefile,v 1.30 2021/11/02 00:00:51 sthen Exp $

COMMENT=		common low-level libraries for logilab projects

MODPY_EGG_VERSION =	1.4.0
DISTNAME=		logilab-common-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		6

HOMEPAGE=		https://www.logilab.org/project/logilab-common

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		${BASE_PKGPATH}=${MODPY_EGG_VERSION} \
			devel/py-tz${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -W once -m logilab.common.pytest

.include <bsd.port.mk>
