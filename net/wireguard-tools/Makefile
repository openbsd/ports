# $OpenBSD: Makefile,v 1.10 2019/10/30 14:03:07 jasper Exp $

COMMENT =	fast and secure VPN

V =		0.0.20191012
DISTNAME =	WireGuard-$V
PKGNAME =	wireguard-tools-$V
EPOCH =		0

CATEGORIES =	net security

HOMEPAGE =	https://www.wireguard.com/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES =		https://git.zx2c4.com/WireGuard/snapshot/

EXTRACT_SUFX =		.tar.xz

# Uses __builtin_bswap* on big-endian archs
COMPILER =		base-clang ports-gcc
RUN_DEPENDS =		shells/bash

MAKE_FLAGS =		WITH_WGQUICK=yes \
			WITH_BASHCOMPLETION=yes \
			V=1
FAKE_FLAGS =		MANDIR=${PREFIX}/man \
			PREFIX=${PREFIX}
USE_GMAKE =		Yes

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/src/tools

ALL_TARGET =		wg

post-extract:
	sed -i 's/install -v /install /g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
