COMMENT =		DOOM I Shareware data files

DISTNAME =		doom19s
PKGNAME =		doomdata-1.9
REVISION =		1
EXTRACT_SUFX =		.zip
CATEGORIES =		games


DISTFILES =		doom_v18${EXTRACT_SUFX} 
DISTFILES.19 =		${DISTNAME}${EXTRACT_SUFX}

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

PKG_ARCH =		*

# no commercial use, electronic distribution permitted
PERMIT_PACKAGE =	Yes

# 1.8 first so 1.9 files are preferred
SITES =			https://www.gamers.org/pub/idgames/historic/
SITES.19 =		https://www.gamers.org/pub/idgames/idstuff/doom/

WRKSRC =		${WRKDIR}

do-build:
	cd ${WRKBUILD} && cat DOOMS_19.[12] > DOOMS_19.ZIP && \
	    unzip DOOMS_19.ZIP
	cd ${WRKBUILD} && cat DOOM18S.[12] > DOOM18S.ZIP && \
	    unzip DOOM18S.ZIP LICENSE.DOC VENDOR.DOC && \
	    sed -i s/$$(echo '\r')//g LICENSE.DOC VENDOR.DOC

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doom/
	${INSTALL_DATA} ${WRKBUILD}/DOOM1.WAD ${PREFIX}/share/doom/doom1.wad
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/doomdata/
	${INSTALL_DATA} ${WRKBUILD}/LICENSE.DOC ${WRKBUILD}/VENDOR.DOC \
	    ${PREFIX}/share/doc/doomdata

.include <bsd.port.mk>
