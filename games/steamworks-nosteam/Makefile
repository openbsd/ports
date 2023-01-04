COMMENT =	Steamworks stub libraries

V =		0.4.1pl0
DISTNAME =	Steamworks-nosteam-v${V}
PKGNAME =	steamworks-nosteam-${V}
GH_ACCOUNT =	rfht
GH_PROJECT =	Steamworks-nosteam
# checkout from 2023-01-03
GH_COMMIT =	bcaa5eb0ff8d2e5c6c5841ad86dacfdbf2496fa2

SHARED_LIBS +=  cestub			0.0	# 0.4.1

CATEGORIES =	games
HOMEPAGE =	https://github.com/rfht/Steamworks-nosteam
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

FIX_EXTRACT_PERMISSIONS =	Yes

# MIT (Steamworks.NET), zlib (libSteamworksNative)
PERMIT_PACKAGE =	Yes

# C++
COMPILER =	base-clang ports-gcc

NO_TEST =	Yes

.include <bsd.port.mk>
