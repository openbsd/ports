# $OpenBSD: Makefile.inc,v 1.61 2021/05/25 15:59:40 sthen Exp $

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	1.15.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
