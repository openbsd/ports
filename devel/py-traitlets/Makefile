# $OpenBSD: Makefile,v 1.5 2016/07/03 14:34:57 shadchin Exp $

COMMENT =		configuration system for Python applications

MODPY_EGG_VERSION =	4.2.2
DISTNAME =		traitlets-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

RUN_DEPENDS =		devel/py-ipython_genutils${MODPY_FLAVOR} \
			devel/py-decorator${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
