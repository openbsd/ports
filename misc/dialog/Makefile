# $OpenBSD: Makefile,v 1.28 2016/04/12 15:19:40 naddy Exp $

COMMENT =		curses widgets (menus, lists, etc) for shell scripts

V =			1.2-20150920
DISTNAME =		dialog-${V}
PKGNAME =		dialog-${V:S/-/./}
REVISION =		0

CATEGORIES =		misc

HOMEPAGE =		http://invisible-island.net/dialog/dialog.html

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv intl m ncurses

MASTER_SITES =		http://invisible-mirror.net/archives/dialog/ \
			ftp://invisible-island.net/dialog/
EXTRACT_SUFX =		.tgz

BUILD_DEPENDS =		devel/gettext-tools

LIB_DEPENDS =		devel/gettext

MAKE_FILE =		makefile

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-nls
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -liconv"

NO_TEST =		Yes

.include <bsd.port.mk>
