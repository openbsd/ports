# $OpenBSD: Makefile,v 1.6 2020/07/03 21:13:18 sthen Exp $

COMMENT = high-performance, pure-Python HTTP server used by CherryPy

MODPY_EGG_VERSION =	8.2.1
DISTNAME =		cheroot-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		www

HOMEPAGE =		https://github.com/cherrypy/cheroot

# custom, MIT-style
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR ?=

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}>=1.15.0 \
			devel/py-setuptools_scm_git_archive${MODPY_FLAVOR}>=1.0
RUN_DEPENDS =		devel/py-jaraco-functools${MODPY_FLAVOR} \
			devel/py-more-itertools${MODPY_FLAVOR}>=2.6 \
			devel/py-six${MODPY_FLAVOR}>=1.11.0

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-backports-functools-lru-cache
.endif

NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/cheroot ${PREFIX}/bin/cheroot${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
