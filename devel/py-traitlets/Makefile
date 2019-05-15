# $OpenBSD: Makefile,v 1.13 2019/05/15 12:04:38 kmos Exp $

COMMENT =		configuration system for Python applications

MODPY_EGG_VERSION =	4.3.2
DISTNAME =		traitlets-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-ipython_genutils${MODPY_FLAVOR} \
			devel/py-decorator${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	traitlets

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-enum34
TEST_DEPENDS +=		devel/py-mock
.endif

.include <bsd.port.mk>
