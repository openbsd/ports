# $OpenBSD: Makefile,v 1.18 2020/05/14 15:51:11 jasper Exp $

COMMENT =	fast and secure VPN

DISTNAME =	wireguard-tools-1.0.20200513
EPOCH =		0

CATEGORIES =	net security

HOMEPAGE =	https://www.wireguard.com/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES =		https://git.zx2c4.com/wireguard-tools/snapshot/

EXTRACT_SUFX =		.tar.xz

DEBUG_PACKAGES =	${BUILD_PACKAGES}

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

WRKSRC =		${WRKDIST}/src

ALL_TARGET =		wg

post-extract:
	sed -i 's/install -v /install /g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
