# $OpenBSD: Makefile,v 1.5 2014/05/27 14:15:43 ajacoutot Exp $

COMMENT =		common testing tools used in the Salt Stack projects

MODPY_EGG_VERSION =	0.5.4
DISTNAME =		SaltTesting-${MODPY_EGG_VERSION}
PKGNAME =		salt-testing-${MODPY_EGG_VERSION}
REVISION =		2

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
