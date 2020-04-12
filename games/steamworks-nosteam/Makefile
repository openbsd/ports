# $OpenBSD: Makefile,v 1.6 2020/04/12 21:25:10 thfr Exp $

COMMENT =	Steamworks stub libraries

V =		0.4.1
DISTNAME =	Steamworks-nosteam-v${V}
PKGNAME =	steamworks-nosteam-${V}
REVISION =	0

SHARED_LIBS +=  cestub			0.0	# 0.4.1

CATEGORIES =	games
HOMEPAGE =	https://github.com/rfht/Steamworks-nosteam
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

WANTLIB += ${COMPILER_LIBCXX} hl m

# MIT (Steamworks.NET), zlib (libSteamworksNative)
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/rfht/Steamworks-nosteam/releases/download/v${V}/

# C++
COMPILER =	base-clang ports-gcc

MODULES =	lang/mono
LIB_DEPENDS =	lang/hashlink
NO_TEST =	Yes

.include <bsd.port.mk>
