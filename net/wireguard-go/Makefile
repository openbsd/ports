# $OpenBSD: Makefile,v 1.13 2020/03/30 14:33:11 jasper Exp $

ONLY_FOR_ARCHS = amd64

COMMENT =	implementation of WireGuard in Go

DISTNAME =	wireguard-go-0.0.20200320
EPOCH =		0

CATEGORIES =	net security

HOMEPAGE =	https://www.wireguard.com/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MASTER_SITES =		https://git.zx2c4.com/wireguard-go/snapshot/
EXTRACT_SUFX =		.tar.xz

MODULES =		lang/go
BUILD_DEPENDS =		devel/go-sys \
			devel/go-tools \
			net/go-net \
			security/go-crypto \
			textproc/go-text

USE_GMAKE =		Yes

ALL_TARGET =		golang.zx2c4.com/wireguard-go

# Adjust the paths so that imports like golang.zx2c4.com/wireguard/device are
# correctly handled.
pre-build:
	cd ${WRKSRC} && \
		mkdir ../wireguard/ && \
		mv device ipc ratelimiter replay tai64n tun ../wireguard

.include <bsd.port.mk>
