# $OpenBSD: Makefile,v 1.7 2019/07/12 20:51:17 sthen Exp $

COMMENT =		minimal, flat style icon theme

GH_ACCOUNT =		snwh
GH_PROJECT =		moka-icon-theme
GH_TAGNAME =		v5.4.0
REVISION =		1

CATEGORIES =		x11

HOMEPAGE =		https://snwh.org/moka

# GPLv3
PERMIT_PACKAGE =	Yes

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
