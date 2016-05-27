# $OpenBSD: Makefile,v 1.1.1.1 2016/05/27 17:04:53 danj Exp $

COMMENT =		multidict implementation

MODPY_EGG_VERSION =	1.1.0a6
DISTNAME =		multidict-${MODPY_EGG_VERSION}
PKGNAME =		py3-${DISTNAME}
CATEGORIES =		www devel

GH_ACCOUNT =		aio-libs
GH_PROJECT =		multidict
GH_TAGNAME =		v${MODPY_EGG_VERSION}

WANTLIB += pthread ${MODPY_WANTLIB}

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

pre-test:
	@${MODPY_CMD} build_ext --inplace

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m pytest ./tests/

.include <bsd.port.mk>
