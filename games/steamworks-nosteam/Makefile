# $OpenBSD: Makefile,v 1.1.1.1 2019/05/27 19:49:25 thfr Exp $

COMMENT =	Steamworks stub libraries

V =		0.1.1
DISTNAME =	Steamworks.NET-nosteam-v${V}
PKGNAME =	steamworks-nosteam-${V}

CATEGORIES =	games
HOMEPAGE =	https://github.com/rfht/Steamworks.NET-nosteam
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/rfht/Steamworks.NET-nosteam/releases/download/v${V}/

MODULES =	lang/mono
NO_TEST =	Yes
WRKDIST =	${WRKDIR}/Steamworks.NET-nosteam

do-build:
	xbuild ${WRKSRC}/Standalone/Steamworks.NET.sln

do-install:
	mkdir -p ${PREFIX}/share/steamstubs
	${INSTALL_DATA} \
		${WRKBUILD}/Standalone/bin/x64/OSX-Linux/Steamworks.NET.dll \
		${PREFIX}/share/steamstubs

.include <bsd.port.mk>
