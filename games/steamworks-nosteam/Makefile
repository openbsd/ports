# $OpenBSD: Makefile,v 1.3 2019/09/02 18:24:42 thfr Exp $

COMMENT =	Steamworks stub libraries

V =		0.2.1
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
