# $OpenBSD: Makefile.inc,v 1.2 2015/11/17 14:03:41 sthen Exp $

HOMEPAGE?=		https://letsencrypt.org/
MAINTAINER?=		Stuart Henderson <sthen@openbsd.org>

CATEGORIES?=		security/letsencrypt security

MODPY_PI?=		Yes
MODPY_SETUPTOOLS?=	Yes

# Apache 2.0
PERMIT_PACKAGE_CDROM?=	Yes
