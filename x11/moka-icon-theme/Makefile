# $OpenBSD: Makefile,v 1.2 2015/05/18 11:29:38 jasper Exp $

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
	rm ${WRKDIST}/Moka/*/apps/{Blender,blender,FBReader,TeXworks,Uberwriter,uberwriter,texworks,fbreader}.png
	rm ${WRKDIST}/Moka/8x8/emblems/emblem-{danger,insync-des-error}.png
	cd ${WRKDIST} ; pax -L -rw Moka ${ICONSDIR}

.include <bsd.port.mk>
