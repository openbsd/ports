# $OpenBSD: Makefile.inc,v 1.52 2019/12/05 17:16:28 sthen Exp $

MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	1.0.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE?=	Yes
