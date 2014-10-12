# $OpenBSD: Makefile,v 1.1.1.1 2014/10/12 20:40:39 juanfra Exp $

COMMENT =		python package to check certificates using the OpenBSD CA

MODPY_EGG_VERSION =	14.05.14
DISTNAME =		certifi-${MODPY_EGG_VERSION}
PKGNAME =		py-certifi-${MODPY_EGG_VERSION}
CATEGORIES =		devel security

HOMEPAGE =		http://python-requests.org

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=c/certifi/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

pre-install:
	@${SUBST_CMD} ${WRKSRC}/certifi/core.py

.include <bsd.port.mk>
