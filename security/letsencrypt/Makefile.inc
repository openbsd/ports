# $OpenBSD: Makefile.inc,v 1.37 2018/03/20 14:47:54 sthen Exp $

HOMEPAGE?=		https://letsencrypt.org/
MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	0.22.2

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE_CDROM?=	Yes
