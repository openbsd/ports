# $OpenBSD: Makefile,v 1.1.1.1 2009/06/05 22:31:44 phessler Exp $

COMMENT =		DOOM I Shareware data files

DISTNAME =		doom19s
PKGNAME =		doomdata-1.9
EXTRACT_SUFX =		.zip
CATEGORIES =		games

HOMEPAGE =		http://www.idsoftware.com/games/doom/doom-collectors/

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

PKG_ARCH =		*

# John Carmack says "freely distributable" :
# http://sinusforschung.com/cgi-bin/dwww/usr/share/doc/doom-wad-shareware/copyright
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		ftp://ftp.idsoftware.com/idstuff/doom/

WRKSRC =		${WRKDIR}

do-build:
	cd ${WRKBUILD} && cat DOOMS_19.[12] > DOOMS_19.ZIP
	cd ${WRKBUILD} && unzip DOOMS_19.ZIP

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/games/doom/
	${INSTALL_DATA} ${WRKBUILD}/DOOM1.WAD \
		${PREFIX}/share/games/doom/doom1.wad

.include <bsd.port.mk>
