# $OpenBSD: Makefile.inc,v 1.57 2020/06/06 20:23:48 sthen Exp $

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	1.5.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
