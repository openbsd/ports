# $OpenBSD: Makefile.inc,v 1.4 2015/11/26 09:09:18 sthen Exp $

HOMEPAGE?=		https://letsencrypt.org/
MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

LE_RELEASE?=		20151123
MODPY_EGG_VERSION?=	0.0.0.dev${LE_RELEASE}
PKGNAME?=		${DISTNAME:S/.dev/pre/}

# Apache 2.0
PERMIT_PACKAGE_CDROM?=	Yes
