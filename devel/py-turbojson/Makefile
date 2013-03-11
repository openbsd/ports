# $OpenBSD: Makefile,v 1.14 2013/03/11 10:50:26 espie Exp $

COMMENT =		template plugin for TurboGears that supports json

MODPY_EGG_VERSION =	1.1.4
DISTNAME =		TurboJson-${MODPY_EGG_VERSION}
PKGNAME =		py-turbojson-${MODPY_EGG_VERSION}
REVISION =		4

CATEGORIES =		devel

HOMEPAGE =		http://www.turbogears.org/

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=T/TurboJson/}

MODULES =		lang/python
RUN_DEPENDS =		databases/py-sqlobject \
			devel/py-ruledispatch \
			devel/py-simplejson \
			devel/py-peak-rules \
			devel/py-prioritized_methods
TEST_DEPENDS =	${RUN_DEPENDS} \
			devel/py-nose

MODPY_SETUPTOOLS =	Yes

do-test:
	cd ${WRKSRC}/turbojson && ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
