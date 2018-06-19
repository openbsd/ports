# $OpenBSD: Makefile,v 1.30 2018/06/19 13:53:20 sthen Exp $

COMMENT =		curses widgets (menus, lists, etc) for shell scripts

V =			1.3-20171209
DISTNAME =		dialog-${V}
PKGNAME =		dialog-${V:S/-/./}

CATEGORIES =		misc

HOMEPAGE =		https://invisible-island.net/dialog/dialog.html

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv intl ncurses

MASTER_SITES =		https://invisible-island.net/datafiles/release/ \
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
