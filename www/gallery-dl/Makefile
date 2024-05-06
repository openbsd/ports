COMMENT =		CLI program to mass download images from various websites

MODPY_EGG_VERSION =	1.26.7
DISTNAME =		gallery_dl-${MODPY_EGG_VERSION}
PKGNAME = 		${DISTNAME:S/_/-/}
CATEGORIES =		www
HOMEPAGE =		https://github.com/mikf/gallery-dl/
REVISION =              0

MAINTAINER =		grodzio1 <grodzio@protonmail.com>

# GPL 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
