# $OpenBSD: Makefile,v 1.16 2016/10/08 14:19:09 shadchin Exp $

COMMENT =		scalable, non-blocking web server

MODPY_EGG_VERSION =	4.4.2
DISTNAME =		tornado-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		http://www.tornadoweb.org/

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
RUN_DEPENDS =		devel/py-backports-abc${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			net/py-curl${MODPY_FLAVOR}

WANTLIB +=		pthread ${MODPY_WANTLIB}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-certifi \
			devel/py-singledispatch
TEST_DEPENDS +=		devel/py-futures \
			devel/py-mock \
			devel/py-twisted/core \
			devel/py-twisted/names \
			devel/py-twisted/web
.endif

pre-test:
	${MODPY_CMD} build_ext --inplace

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m tornado.test.runtests

.include <bsd.port.mk>
