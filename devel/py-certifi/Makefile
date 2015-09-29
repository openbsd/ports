# $OpenBSD: Makefile,v 1.4 2015/09/29 09:02:55 edd Exp $

COMMENT =		Python package to check certificates using the OpenBSD CA

MODPY_EGG_VERSION =	14.5.14
DISTNAME =		certifi-14.05.14
PKGNAME =		py-certifi-14.05.14
CATEGORIES =		devel security
REVISION =		1

HOMEPAGE =		http://python-requests.org

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS +=		devel/py-setuptools>=18.2v0
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
