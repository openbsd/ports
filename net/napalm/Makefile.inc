# $OpenBSD: Makefile.inc,v 1.3 2019/12/21 14:21:13 jasper Exp $

CATEGORIES +=		net net/napalm

MODULES +=		lang/python
MODPY_PI ?=		Yes
MODPY_SETUPTOOLS ?=	Yes

# Apache 2.0
PERMIT_PACKAGE ?=	Yes
