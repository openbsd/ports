# $OpenBSD: Makefile.inc,v 1.3 2015/11/17 14:19:37 sthen Exp $

HOMEPAGE?=		https://letsencrypt.org/
MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

LE_RELEASE?=		20151114
MODPY_EGG_VERSION?=	0.0.0.dev${LE_RELEASE}
PKGNAME?=		${DISTNAME:S/.dev/pre/}

# Apache 2.0
PERMIT_PACKAGE_CDROM?=	Yes
