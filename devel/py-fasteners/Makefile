# $OpenBSD: Makefile,v 1.4 2019/05/15 12:04:36 kmos Exp $

COMMENT =		python package that provides useful locks

MODPY_EGG_VERSION =	0.14.1
DISTNAME =		fasteners-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/harlowja/fasteners

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-monotonic${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			devel/py-testtools${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-futures
.endif

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
	    ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
