# $OpenBSD: Makefile,v 1.22 2019/04/28 20:51:40 sthen Exp $

COMMENT =		Pyrex generated python interface to PROJ.4 library

MODPY_EGG_VERSION =	1.9.6
DISTNAME =		pyproj-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		0

CATEGORIES =		geo

HOMEPAGE =		https://github.com/jswhit/pyproj

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/proj \
			math/py-numpy${MODPY_FLAVOR}

do-test: fake
.for t in test test2
.if ${FLAVOR:Mpython3}
	sed -i.bak -e 's/print \(.*\)$$/print (\1)/; s/cPickle/pickle/' ${WRKSRC}/test/${t}.py
.endif
	cd ${WRKSRC}/test && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./${t}.py
.endfor

.include <bsd.port.mk>
