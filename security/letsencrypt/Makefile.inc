# $OpenBSD: Makefile.inc,v 1.10 2016/02/25 00:46:09 sthen Exp $

HOMEPAGE?=		https://letsencrypt.org/
MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	0.4.0
PKGNAME?=		${DISTNAME:S/.dev/pre/}

MODULES?=		lang/python

# Apache 2.0
PERMIT_PACKAGE_CDROM?=	Yes
