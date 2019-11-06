# $OpenBSD: Makefile.inc,v 1.50 2019/11/06 16:50:56 sthen Exp $

MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	0.40.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
