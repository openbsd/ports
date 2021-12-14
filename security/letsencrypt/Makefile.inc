# $OpenBSD: Makefile.inc,v 1.66 2021/12/14 00:51:59 sthen Exp $

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	1.22.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
