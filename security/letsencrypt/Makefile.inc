# $OpenBSD: Makefile.inc,v 1.60 2021/03/31 20:46:19 sthen Exp $

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	1.13.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
