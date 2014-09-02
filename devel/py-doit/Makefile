# $OpenBSD: Makefile,v 1.6 2014/09/02 11:16:49 bcallah Exp $

COMMENT =	automation tool
MODPY_EGG_VERSION =	0.26.0
DISTNAME =	doit-${MODPY_EGG_VERSION}
PKGNAME =	py-doit-${MODPY_EGG_VERSION}
CATEGORIES =	devel

HOMEPAGE =	http://pydoit.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://pypi.python.org/packages/source/d/doit/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-six

NO_TEST =	Yes

.include <bsd.port.mk>
