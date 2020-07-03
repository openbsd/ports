# $OpenBSD: Makefile,v 1.24 2020/07/03 21:13:20 sthen Exp $

COMMENT =		scalable, non-blocking web server

# 5.x is the last major release which support both py2+3, 6.x is py3-only
MODPY_EGG_VERSION =	5.1.1
DISTNAME =		tornado-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		www

HOMEPAGE =		https://www.tornadoweb.org/

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
TEST_DEPENDS =		net/py-curl${MODPY_FLAVOR}

WANTLIB +=		pthread ${MODPY_WANTLIB}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-backports-abc \
			devel/py-certifi \
			devel/py-futures \
			devel/py-singledispatch
TEST_DEPENDS +=		devel/py-mock \
			devel/py-twisted
.endif

pre-test:
	${MODPY_CMD} build_ext --inplace

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m tornado.test.runtests

.include <bsd.port.mk>
