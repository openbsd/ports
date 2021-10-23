# $OpenBSD: Makefile,v 1.10 2021/09/01 22:32:25 sthen Exp $

BROKEN =		requires update to fabric 2.x for python 3
# N.B. commented-out in ../Makefile to avoid breaking dpb; if updating/unbreaking, that must be reenabled.

COMMENT =		simple, pythonic tool for remote execution and deployment

MODPY_EGG_VERSION =	1.14.0
DISTNAME =		Fabric-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://www.fabfile.org/

MAINTAINER =		Pablo Mendez Hernandez <pablomh@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		security/py-paramiko
TEST_DEPENDS =		devel/py-nose \
			security/sudo \
			www/py-jinja2
PORTHOME =		${WRKSRC}

.include <bsd.port.mk>
