# $OpenBSD: Makefile,v 1.5 2019/11/03 12:21:55 kn Exp $

COMMENT =		DOOM I Shareware data files

DISTNAME =		doom19s
PKGNAME =		doomdata-1.9
REVISION =		1
EXTRACT_SUFX =		.zip
CATEGORIES =		games

DISTFILES = 		doom_v18.zip doom19s.zip:0

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

PKG_ARCH =		*

# no commercial use, electronic distribution permitted
PERMIT_PACKAGE =	Yes

# 1.8 first so 1.9 files are preferred
MASTER_SITES =		http://www.gamers.org/pub/idgames/historic/
MASTER_SITES0 =		http://www.gamers.org/pub/idgames/idstuff/doom/

WRKSRC =		${WRKDIR}

do-build:
	cd ${WRKBUILD} && cat DOOMS_19.[12] > DOOMS_19.ZIP && \
	    unzip DOOMS_19.ZIP
	cd ${WRKBUILD} && cat DOOM18S.[12] > DOOM18S.ZIP && \
	    unzip DOOM18S.ZIP LICENSE.DOC VENDOR.DOC && \
	    tr -d '\r' < LICENSE.DOC > LICENSE && \
	    tr -d '\r' < VENDOR.DOC > VENDOR

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doom/
	${INSTALL_DATA} ${WRKBUILD}/DOOM1.WAD ${PREFIX}/share/doom/doom1.wad
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/doomdata/
	${INSTALL_DATA} ${WRKBUILD}/LICENSE \
	    ${PREFIX}/share/doc/doomdata/LICENSE.DOC
	${INSTALL_DATA} ${WRKBUILD}/VENDOR \
	    ${PREFIX}/share/doc/doomdata/VENDOR.DOC

.include <bsd.port.mk>
