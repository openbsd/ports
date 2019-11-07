# $OpenBSD: Makefile.inc,v 1.51 2019/11/07 14:36:13 sthen Exp $

MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	0.40.1

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
