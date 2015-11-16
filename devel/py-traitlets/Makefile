# $OpenBSD: Makefile,v 1.1.1.1 2015/11/16 20:56:00 edd Exp $

COMMENT =		configuration system for Python applications

MODPY_EGG_VERSION =	4.0.0
DISTNAME =		traitlets-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

RUN_DEPENDS =		devel/py-ipython_genutils \
			devel/py-decorator
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
