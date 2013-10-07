# $OpenBSD: Makefile,v 1.1.1.1 2013/10/07 19:23:11 landry Exp $

COMMENT =	common testing tools used in the Salt Stack projects

MODPY_EGG_VERSION =	0.5.1
DISTNAME =	SaltTesting-${MODPY_EGG_VERSION}
PKGNAME =	salt-testing-${MODPY_EGG_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	http://saltstack.org/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=S/SaltTesting/}

MODULES =	lang/python
NO_TEST =	Yes

.include <bsd.port.mk>
