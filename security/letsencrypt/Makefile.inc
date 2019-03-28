# $OpenBSD: Makefile.inc,v 1.44 2019/03/28 14:31:25 sthen Exp $

MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	0.32.0

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE_CDROM?=	Yes
