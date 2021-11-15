# $OpenBSD: Makefile,v 1.22 2021/11/15 13:12:57 sthen Exp $

COMMENT =		plugin to manage your versions by scm tags

# >=6.0 is py3 only; to update we'll need to remove py2 for the py-test chain
MODPY_EGG_VERSION =	5.0.2
DISTNAME =		setuptools_scm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		2

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
# toml is an optional run dependency and only used for some ports, but
# the failure mode from not having it (version number replaced with 0.0.0)
# is not very obvious, so add it always
RUN_DEPENDS +=		textproc/py-toml${MODPY_FLAVOR}
.else
NO_TEST=		Yes
.endif

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
