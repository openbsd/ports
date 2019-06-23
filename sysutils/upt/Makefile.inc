# $OpenBSD: Makefile.inc,v 1.2 2019/06/23 15:03:08 danj Exp $

CATEGORIES ?=		sysutils devel

# BSD-3-Clause
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
