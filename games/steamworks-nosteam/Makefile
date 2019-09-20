# $OpenBSD: Makefile,v 1.4 2019/09/20 23:21:15 thfr Exp $

COMMENT =	Steamworks stub libraries

V =		0.3.0
DISTNAME =	Steamworks.NET-nosteam-v${V}
PKGNAME =	steamworks-nosteam-${V}

CATEGORIES =	games
HOMEPAGE =	https://github.com/rfht/Steamworks.NET-nosteam
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT (Steamworks.NET), zlib (libSteamworksNative)
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/rfht/Steamworks.NET-nosteam/releases/download/v${V}/

MODULES =	lang/mono
NO_TEST =	Yes
WRKDIST =	${WRKDIR}/Steamworks.NET-nosteam

.include <bsd.port.mk>
