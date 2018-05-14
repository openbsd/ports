# $OpenBSD: Makefile,v 1.2 2018/05/14 20:03:04 bket Exp $

COMMENT =	library providing BLAKE2b, BLAKE2s, BLAKE2bp, BLAKE2sp

V =		0.98
DISTNAME =	libb2-${V}
EPOCH =		0

SHARED_LIBS =	b2	0.0 # 1.3

CATEGORIES =	security

HOMEPAGE =	https://blake2.net/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# CC0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/BLAKE2/libb2/releases/download/v${V}/

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS =	--disable-fat \
			--disable-native \
			--disable-openmp

AUTOCONF_VERSION =	2.69

.include <bsd.port.mk>
