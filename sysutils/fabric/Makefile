# $OpenBSD: Makefile,v 1.7 2019/07/12 20:49:42 sthen Exp $

COMMENT =		simple, pythonic tool for remote execution and deployment

MODPY_EGG_VERSION =	1.14.0
DISTNAME =		Fabric-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}

CATEGORIES =		sysutils

HOMEPAGE =		http://www.fabfile.org/

MAINTAINER =		Pablo Mendez Hernandez <pablomh@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		security/py-paramiko
TEST_DEPENDS =		devel/py-nose \
			security/sudo \
			www/py-jinja2
PORTHOME =		${WRKSRC}

.include <bsd.port.mk>
