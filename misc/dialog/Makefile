# $OpenBSD: Makefile,v 1.20 2013/11/21 22:45:25 sthen Exp $

COMMENT =	curses widgets (menus, lists, etc) for shell scripts

V =		1.2-20130928
DISTNAME =	dialog-${V}
PKGNAME =	dialog-${V:S/-/./}

EXTRACT_SUFX =	.tgz

CATEGORIES =	misc

MASTER_SITES =	ftp://invisible-island.net/dialog/
HOMEPAGE =	http://invisible-island.net/dialog/dialog.html

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncurses

MODULES =	devel/gettext

CONFIGURE_STYLE = gnu
MAKE_FILE =	makefile

CONFIGURE_ARGS = --enable-nls \
		--includedir="${LOCALBASE}/include"
CONFIGURE_ENV =	LDFLAGS="-L${LOCALBASE}/lib -liconv"

NO_TEST =	Yes

post-build:
	cd ${WRKSRC}/po; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

post-install:
	cd ${WRKSRC}/po; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} DESTDIR=${DESTDIR} ${MAKE_FLAGS} install

.include <bsd.port.mk>
