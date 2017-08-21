# $OpenBSD: Makefile,v 1.29 2017/08/21 12:23:04 fcambus Exp $

COMMENT =		curses widgets (menus, lists, etc) for shell scripts

V =			1.3-20170509
DISTNAME =		dialog-${V}
PKGNAME =		dialog-${V:S/-/./}

CATEGORIES =		misc

HOMEPAGE =		http://invisible-island.net/dialog/dialog.html

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv intl ncurses

MASTER_SITES =		http://invisible-mirror.net/archives/dialog/ \
			ftp://ftp.invisible-island.net/dialog/
EXTRACT_SUFX =		.tgz

BUILD_DEPENDS =		devel/gettext-tools

LIB_DEPENDS =		devel/gettext

MAKE_FILE =		makefile

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-nls
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -liconv"

NO_TEST =		Yes

.include <bsd.port.mk>
