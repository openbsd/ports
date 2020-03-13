# $OpenBSD: Makefile,v 1.1.1.1 2020/03/13 11:56:53 edd Exp $

COMMENT =	magic wormhole implementation in Go

V =		1.0.2
DISTNAME =	wormhole-william-vendored-${V}
PKGNAME =	wormhole-william-${V}

ALL_TARGET =	github.com/psanford/wormhole-william

CATEGORIES =	net
HOMEPAGE =	https://github.com/psanford/wormhole-william

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

WANTLIB += c pthread

MASTER_SITES =	https://theunixzoo.co.uk/distfiles/

MODULES =		lang/go

.include <bsd.port.mk>
