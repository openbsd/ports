# $OpenBSD: Makefile.inc,v 1.54 2020/02/05 19:43:09 sthen Exp $

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	1.2.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
