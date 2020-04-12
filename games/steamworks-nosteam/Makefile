# $OpenBSD: Makefile,v 1.5 2020/04/12 13:41:59 thfr Exp $

COMMENT =	Steamworks stub libraries

V =		0.4.1
DISTNAME =	Steamworks-nosteam-v${V}
PKGNAME =	steamworks-nosteam-${V}

SHARED_LIBS +=  cestub			0.0	# 0.4.1

CATEGORIES =	games
HOMEPAGE =	https://github.com/rfht/Steamworks-nosteam
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT (Steamworks.NET), zlib (libSteamworksNative)
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/rfht/Steamworks-nosteam/releases/download/v${V}/

MODULES =	lang/mono
NO_TEST =	Yes

.include <bsd.port.mk>
