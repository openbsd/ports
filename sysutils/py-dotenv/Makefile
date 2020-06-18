# $OpenBSD: Makefile,v 1.1.1.1 2020/06/18 09:50:00 sthen Exp $

COMMENT =	handle .env files

MODPY_EGG_VERSION =	0.0.5

DISTNAME =	dotenv-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/pedroburon/dotenv

# MIT, added in https://github.com/pedroburon/dotenv/commit/81923e7e901ed512ec91fa27058e0cb9d6b4ac6c
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

# not in pypi distfile
NO_TEST =		Yes

post-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/dotenv

.include <bsd.port.mk>
