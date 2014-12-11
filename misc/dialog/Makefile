# $OpenBSD: Makefile,v 1.21 2014/12/11 23:54:51 rpe Exp $

COMMENT =	curses widgets (menus, lists, etc) for shell scripts

V =		1.2-20140911
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

.include <bsd.port.mk>
