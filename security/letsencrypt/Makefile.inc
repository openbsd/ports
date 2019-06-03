# $OpenBSD: Makefile.inc,v 1.46 2019/06/03 16:06:56 sthen Exp $

MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	0.34.2

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
