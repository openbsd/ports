# $OpenBSD: Makefile,v 1.14 2016/06/05 17:16:06 danj Exp $

COMMENT =		Python WSGI HTTP server

MODPY_EGG_VERSION =	19.5.0
DISTNAME =		gunicorn-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www
REVISION =		0

HOMEPAGE =		http://gunicorn.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

# py-aiohttp and py-multidict are python3 only
.if ${FLAVOR:Mpython3}
RUN_DEPENDS +=		www/py-aiohttp \
			www/py-multidict
.endif
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}
.if ! ${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

.if ${FLAVOR:Mpython3}
post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done
.endif

.include <bsd.port.mk>
