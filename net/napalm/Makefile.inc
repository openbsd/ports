# $OpenBSD: Makefile.inc,v 1.1.1.1 2018/02/17 14:09:19 jasper Exp $

CATEGORIES +=		net net/napalm

MAINTAINER ?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

MODULES +=		lang/python
MODPY_PI ?=		Yes
MODPY_SETUPTOOLS ?=	Yes

# Apache 2.0
PERMIT_PACKAGE_CDROM ?=	Yes
