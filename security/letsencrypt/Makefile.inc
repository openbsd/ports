# $OpenBSD: Makefile.inc,v 1.47 2019/07/12 15:50:34 sthen Exp $

MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	0.36.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
