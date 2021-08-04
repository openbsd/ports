# $OpenBSD: Makefile.inc,v 1.63 2021/08/04 09:04:04 sthen Exp $

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	1.18.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
