# $OpenBSD: Makefile,v 1.1.1.1 2015/04/04 13:18:05 landry Exp $

COMMENT =		minimal, flat style icon theme

DISTNAME =		moka-icon-theme-5.0
CATEGORIES =		x11

HOMEPAGE =		http://mokaproject.com/moka-icon-theme/
MASTER_SITES =		https://github.com/moka-project/moka-icon-theme/raw/master/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

PKG_ARCH =		*
NO_BUILD =		Yes
NO_TEST =		Yes

RUN_DEPENDS =		x11/gtk+3,-guic \
			x11/faba-icon-theme

ICONSDIR =		${PREFIX}/share/icons/

do-install:
	${INSTALL_DATA_DIR} ${ICONSDIR}
	# Fix broken symlinks
	rm -f ${WRKDIST}/Moka/*/apps/{Blender,blender,FBReader,TeXworks,Uberwriter,uberwriter,texworks,fbreader}.png
	rm -f ${WRKDIST}/Moka/8x8/emblems/emblem-{danger,insync-des-error}.png
	cd ${WRKDIST} ; pax -L -rw Moka ${ICONSDIR}

.include <bsd.port.mk>
