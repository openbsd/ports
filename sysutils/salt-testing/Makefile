# $OpenBSD: Makefile,v 1.6 2014/06/17 13:16:44 ajacoutot Exp $

COMMENT =		common testing tools used in the Salt Stack projects

MODPY_EGG_VERSION =	2014.4.24
DISTNAME =		SaltTesting-${MODPY_EGG_VERSION}
PKGNAME =		salt-testing-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		http://saltstack.org/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=S/SaltTesting/}

MODULES =		lang/python
NO_TEST =		Yes

RUN_DEPENDS =		devel/py-mock

.include <bsd.port.mk>
