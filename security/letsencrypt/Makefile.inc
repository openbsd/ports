# $OpenBSD: Makefile.inc,v 1.65 2021/11/20 14:41:41 sthen Exp $

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	1.21.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
