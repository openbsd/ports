# $OpenBSD: Makefile.inc,v 1.2 2019/07/13 10:59:27 sthen Exp $

CATEGORIES +=		net net/napalm

MAINTAINER ?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

MODULES +=		lang/python
MODPY_PI ?=		Yes
MODPY_SETUPTOOLS ?=	Yes

# Apache 2.0
PERMIT_PACKAGE ?=	Yes
