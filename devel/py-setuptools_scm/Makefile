# $OpenBSD: Makefile,v 1.17 2021/02/02 11:24:22 sthen Exp $

COMMENT =		plugin to manage your versions by scm tags

MODPY_EGG_VERSION =	3.4.1
DISTNAME =		setuptools_scm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/git \
			devel/mercurial \
			devel/py-pip${MODPY_FLAVOR}

.if ${FLAVOR:Mpython3}
# toml is an optional run dependency, used rarely
TEST_DEPENDS +=		textproc/py-toml${MODPY_FLAVOR}
.endif

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
