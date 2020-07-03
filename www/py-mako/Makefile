# $OpenBSD: Makefile,v 1.28 2020/07/03 21:13:19 sthen Exp $

COMMENT =	super-fast templating language

MODPY_EGG_VERSION = 	1.1.1
DISTNAME =		Mako-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://www.makotemplates.org/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS = 	Yes
MODPY_PYTEST =		Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		textproc/py-MarkupSafe${MODPY_FLAVOR} \
			www/py-beaker${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

post-install:
	mv ${PREFIX}/bin/mako-render \
		${PREFIX}/bin/mako-render${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
