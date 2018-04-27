# $OpenBSD: Makefile.inc,v 1.1.1.1 2018/04/27 16:33:27 danj Exp $

CATEGORIES ?=		sysutils devel

# BSD-3-Clause
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
