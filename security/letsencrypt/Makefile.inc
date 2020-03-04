# $OpenBSD: Makefile.inc,v 1.55 2020/03/04 14:33:29 sthen Exp $

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	1.3.0
REVISION?=		0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
