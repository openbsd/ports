# $OpenBSD: Makefile,v 1.3 2013/09/24 04:57:47 bcallah Exp $

COMMENT =	automation tool
MODPY_EGG_VERSION =	0.23.0
DISTNAME =	doit-${MODPY_EGG_VERSION}
PKGNAME =	py-doit-${MODPY_EGG_VERSION}
CATEGORIES =	devel

HOMEPAGE =	http://pydoit.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://pypi.python.org/packages/source/d/doit/

MODULES =	lang/python

RUN_DEPENDS =	devel/py-six

NO_TEST =	Yes

.include <bsd.port.mk>
