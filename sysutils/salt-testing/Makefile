# $OpenBSD: Makefile,v 1.20 2016/11/02 17:41:48 ajacoutot Exp $

COMMENT =		common testing tools used in the Salt Stack projects

MODPY_EGG_VERSION =	2016.9.7
DISTNAME =		SaltTesting-${MODPY_EGG_VERSION}
PKGNAME =		salt-testing-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		http://saltstack.org/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
NO_TEST =		Yes

RUN_DEPENDS =		devel/py-mock \
			sysutils/py-psutil \
			sysutils/salt

.include <bsd.port.mk>
