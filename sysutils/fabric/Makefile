# $OpenBSD: Makefile,v 1.4 2017/01/07 12:55:14 jasper Exp $

COMMENT =		simple, pythonic tool for remote execution and deployment

MODPY_EGG_VERSION =	1.13.1
DISTNAME =		Fabric-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}

CATEGORIES =		sysutils

HOMEPAGE =		http://www.fabfile.org/

MAINTAINER =		Pablo Mendez Hernandez <pablomh@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		security/py-paramiko
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose \
			security/sudo \
			www/py-jinja2
PORTHOME =		${WRKSRC}

.include <bsd.port.mk>
