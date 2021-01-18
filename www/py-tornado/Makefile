# $OpenBSD: Makefile,v 1.26 2021/01/18 21:26:25 daniel Exp $

COMMENT =		scalable, non-blocking web server

MODPY_EGG_VERSION =	6.1
DISTNAME =		tornado-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://www.tornadoweb.org/

# Apache v2
PERMIT_PACKAGE =	Yes

WANTLIB +=		pthread ${MODPY_WANTLIB}

MODULES =		lang/python

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-twisted${MODPY_FLAVOR} \
			net/py-cares${MODPY_FLAVOR} \
			net/py-curl${MODPY_FLAVOR}

pre-test:
	${MODPY_CMD} build_ext --inplace

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m tornado.test.runtests

.include <bsd.port.mk>
