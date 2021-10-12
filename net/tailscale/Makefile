# $OpenBSD: Makefile,v 1.4 2021/10/12 12:47:44 abieber Exp $

BROKEN-i386 =	unix.EPROTO not defined

COMMENT =	modern overlay-like VPN built on top of WireGuard

MODGO_MODNAME =	tailscale.com
MODGO_VERSION =	v1.16.0

DISTNAME =	tailscale.com-${MODGO_VERSION}
PKGNAME =	tailscale-${MODGO_VERSION:S/v//}

CATEGORIES =	net

HOMEPAGE =	https://tailscale.com/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD-3
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

.include "modules.inc"

.include <bsd.port.mk>
