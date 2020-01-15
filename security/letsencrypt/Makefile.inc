# $OpenBSD: Makefile.inc,v 1.53 2020/01/15 20:31:11 sthen Exp $

MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	1.1.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
