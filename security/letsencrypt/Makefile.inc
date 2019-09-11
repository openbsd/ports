# $OpenBSD: Makefile.inc,v 1.49 2019/09/11 21:06:22 sthen Exp $

MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	0.38.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
