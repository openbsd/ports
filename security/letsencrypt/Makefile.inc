# $OpenBSD: Makefile.inc,v 1.48 2019/08/22 16:31:06 sthen Exp $

MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	0.37.2

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
