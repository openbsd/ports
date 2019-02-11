# $OpenBSD: Makefile.inc,v 1.43 2019/02/11 09:41:24 sthen Exp $

MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	0.31.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE_CDROM?=	Yes
