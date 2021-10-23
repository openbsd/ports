# $OpenBSD: Makefile.inc,v 1.64 2021/10/10 11:37:24 sthen Exp $

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	1.20.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
