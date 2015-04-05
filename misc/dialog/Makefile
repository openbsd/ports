# $OpenBSD: Makefile,v 1.23 2015/04/05 20:04:01 rpe Exp $

COMMENT =		curses widgets (menus, lists, etc) for shell scripts

V =			1.2-20150225
DISTNAME =		dialog-${V}
PKGNAME =		dialog-${V:S/-/./}

CATEGORIES =		misc

HOMEPAGE =		http://invisible-island.net/dialog/dialog.html

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncurses

MASTER_SITES =		ftp://invisible-island.net/dialog/
EXTRACT_SUFX =		.tgz

MODULES =		devel/gettext

MAKE_FILE =		makefile

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-nls
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -liconv"

NO_TEST =		Yes

.include <bsd.port.mk>
