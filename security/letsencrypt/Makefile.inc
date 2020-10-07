# $OpenBSD: Makefile.inc,v 1.58 2020/10/07 13:32:49 sthen Exp $

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	1.9.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
