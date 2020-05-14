# $OpenBSD: Makefile.inc,v 1.56 2020/05/14 11:48:53 sthen Exp $

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	1.4.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
