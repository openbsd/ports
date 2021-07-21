# $OpenBSD: Makefile.inc,v 1.62 2021/07/21 15:36:57 sthen Exp $

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	1.17.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
