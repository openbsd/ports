# $OpenBSD: Makefile,v 1.4 2018/06/23 15:16:17 ajacoutot Exp $

COMMENT =		minimal, flat style icon theme

GH_ACCOUNT =		snwh
GH_PROJECT =		moka-icon-theme
GH_TAGNAME =		v5.4.0

CATEGORIES =		x11

HOMEPAGE =		https://snwh.org/moka

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
	cd ${WRKDIST} ; pax -L -rw Moka ${ICONSDIR}

.include <bsd.port.mk>
