# $OpenBSD: Makefile,v 1.7 2020/07/19 12:57:17 thfr Exp $

ONLY_FOR_ARCHS =	${MONO_ARCHS}

COMMENT =	Steam depot downloader utilizing the SteamKit2 library

V =		2.3.6
DISTNAME =	depotdownloader-${V}

CATEGORIES =	games
HOMEPAGE =	https://github.com/SteamRE/DepotDownloader
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv2, bundles SteamKit2 (LGPL-2.1)
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/SteamRE/DepotDownloader/releases/download/DepotDownloader_${V}/
EXTRACT_SUFX =	.zip

RUN_DEPENDS =	lang/mono
NO_BUILD =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/depotdownloader
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
