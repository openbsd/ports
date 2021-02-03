# $OpenBSD: Makefile.inc,v 1.59 2021/02/03 16:18:53 sthen Exp $

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	1.12.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
