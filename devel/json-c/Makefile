# $OpenBSD: Makefile,v 1.19 2018/04/27 18:36:17 phessler Exp $

COMMENT=		JSON implementation in C

DISTNAME=		json-c-0.13.1
CATEGORIES=		devel

SHARED_LIBS=		json-c	1.1	# 4.0

HOMEPAGE=		https://github.com/json-c/json-c/wiki

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =		https://s3.amazonaws.com/json-c_releases/releases/

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69

# not enabled by default at present, but we want to make sure we
# don't use it if it's later enabled, we patch to use arc4random instead.
# (the cpuid code will probably break with PIE on i386 too).
CONFIGURE_ARGS=		--disable-rdrand

.include <bsd.port.mk>
