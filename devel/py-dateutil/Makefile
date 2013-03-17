# $OpenBSD: Makefile,v 1.18 2013/03/17 20:42:29 benoit Exp $

COMMENT =		Python API for advanced date calculations

MODPY_EGG_VERSION =	1.5
DISTNAME =		python-dateutil-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^python-/py-/}
CATEGORIES =    	devel
REVISION =		0

HOMEPAGE =		http://labix.org/python-dateutil
MAINTAINER =		frantisek holop <minusf@obiit.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://labix.org/download/python-dateutil/

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

do-test: fake
		@cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
