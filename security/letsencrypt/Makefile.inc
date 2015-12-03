# $OpenBSD: Makefile.inc,v 1.5 2015/12/03 20:49:58 sthen Exp $

HOMEPAGE?=		https://letsencrypt.org/
MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

MODPY_EGG_VERSION?=	0.1.0
PKGNAME?=		${DISTNAME:S/.dev/pre/}

# Apache 2.0
PERMIT_PACKAGE_CDROM?=	Yes
