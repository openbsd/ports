COMMENT =		curses widgets (menus, lists, etc) for shell scripts

V =			1.3-20240619
DISTNAME =		dialog-${V}
PKGNAME =		dialog-${V:S/-/./}

CATEGORIES =		misc

HOMEPAGE =		https://invisible-island.net/dialog/dialog.html

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += c curses iconv intl

SITES =			https://invisible-mirror.net/archives/dialog/ \
			ftp://ftp.invisible-island.net/dialog/
EXTRACT_SUFX =		.tgz

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		devel/gettext,-runtime

MAKE_FILE =		makefile

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-nls
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -liconv"

FAKE_TARGET =		install install-man install-lib

NO_TEST =		Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/dialog.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
