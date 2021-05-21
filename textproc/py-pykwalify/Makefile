# $OpenBSD: Makefile,v 1.7 2021/05/21 19:50:37 kmos Exp $

COMMENT =		lib/cli for JSON/YAML schema validation

MODPY_EGG_VERSION =	1.6.0
REVISION =		4
DISTNAME =		pykwalify-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-docopt${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/pykwalify{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
