# $OpenBSD: Makefile.inc,v 1.4 2020/02/20 20:16:50 jasper Exp $

CATEGORIES +=		net net/napalm

MODULES +=		lang/python
MODPY_PI ?=		Yes
MODPY_SETUPTOOLS ?=	Yes

FLAVORS =		python3
FLAVOR =		python3

# Apache 2.0
PERMIT_PACKAGE ?=	Yes
