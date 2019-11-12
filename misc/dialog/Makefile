# $OpenBSD: Makefile,v 1.41 2019/11/12 09:46:41 fcambus Exp $

COMMENT =		curses widgets (menus, lists, etc) for shell scripts

V =			1.3-20191110
DISTNAME =		dialog-${V}
PKGNAME =		dialog-${V:S/-/./}

CATEGORIES =		misc

HOMEPAGE =		https://invisible-island.net/dialog/dialog.html

MAINTAINER =		Frederic Cambus <fcambus@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += c curses iconv intl

MASTER_SITES =		https://invisible-mirror.net/archives/dialog/ \
			ftp://ftp.invisible-island.net/dialog/
EXTRACT_SUFX =		.tgz

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		devel/gettext,-runtime

MAKE_FILE =		makefile

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-nls
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -liconv"

NO_TEST =		Yes

.include <bsd.port.mk>
