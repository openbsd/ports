# $OpenBSD: Makefile,v 1.25 2015/06/04 14:46:25 jasper Exp $

COMMENT =		curses widgets (menus, lists, etc) for shell scripts

V =			1.2-20150528
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
