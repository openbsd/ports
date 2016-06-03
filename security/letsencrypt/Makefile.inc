# $OpenBSD: Makefile.inc,v 1.16 2016/06/03 14:23:07 sthen Exp $

HOMEPAGE?=		https://letsencrypt.org/
MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	0.8.0
PKGNAME?=		${DISTNAME:S/.dev/pre/}

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE_CDROM?=	Yes
