# $OpenBSD: Makefile,v 1.2 2019/06/24 22:15:01 thfr Exp $

ONLY_FOR_ARCHS =	${MONO_ARCHS}

COMMENT =	Steam depot downloader utilizing the SteamKit2 library

V =		2.3.0pl1
DISTNAME =	depotdownloader-${V:S/pl/-hotfix/g}
PKGNAME =	depotdownloader-${V}
REVISION =	0

CATEGORIES =	games
HOMEPAGE =	https://github.com/SteamRE/DepotDownloader
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv2, bundles SteamKit2 (LGPL-2.1)
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/SteamRE/DepotDownloader/releases/download/DepotDownloader_${V:S/pl1//g}/
EXTRACT_SUFX =	.zip

RUN_DEPENDS =	lang/mono
NO_BUILD =	Yes

do-install:
	mkdir -p ${PREFIX}/share/depotdownloader
	${INSTALL_DATA} ${WRKDIR}/DepotDownloader.dll{,.config} \
		${WRKDIR}/DepotDownloader.pdb \
		${WRKDIR}/DepotDownloader.{deps,runtimeconfig}.json \
		${WRKDIR}/README.md \
		${WRKDIR}/SteamKit2.dll \
		${WRKDIR}/protobuf-net.dll \
		${PREFIX}/share/depotdownloader/
	${SUBST_CMD} -c -m 755 ${FILESDIR}/depotdownloader.sh \
		${PREFIX}/bin/depotdownloader

.include <bsd.port.mk>
