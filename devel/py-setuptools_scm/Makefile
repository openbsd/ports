# $OpenBSD: Makefile,v 1.19 2021/05/21 19:50:29 kmos Exp $

COMMENT =		plugin to manage your versions by scm tags

MODPY_EGG_VERSION =	5.0.2
DISTNAME =		setuptools_scm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

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
.else
NO_TEST=		Yes
.endif

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
