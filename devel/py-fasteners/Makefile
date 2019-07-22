# $OpenBSD: Makefile,v 1.6 2019/07/22 13:00:01 kmos Exp $

COMMENT =		python package that provides useful locks

MODPY_EGG_VERSION =	0.15
DISTNAME =		fasteners-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/harlowja/fasteners

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=


RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-pbr${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR} \
			devel/py-testtools${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
RUN_DEPENDS  +=		devel/py-monotonic
TEST_DEPENDS +=		devel/py-futures
.endif

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
	    ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
