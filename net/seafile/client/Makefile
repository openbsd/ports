# $OpenBSD: Makefile,v 1.44 2021/11/22 11:21:00 kirby Exp $

COMMENT =		seafile client

GH_PROJECT =		seafile-client
# upstream keep on sliding tags to pull in new commits
# this commit is from the "v8.0.5" tag
GH_COMMIT =		484d80075f9dbcf49d80036e84ed67d47b8cedd4
DISTNAME =		seafile-client-8.0.5pl20211122

WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets c
WANTLIB += crypto event_core event_extra gio-2.0 glib-2.0 gobject-2.0
WANTLIB += intl jansson m pthread seafile searpc sqlite3 ssl z
WANTLIB += ${COMPILER_LIBCXX}

MODULES =		devel/cmake x11/qt5
LIB_DEPENDS =		net/seafile/seafile \
			databases/sqlite3
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
CONFIGURE_ARGS += 	-Wno-dev

NO_TEST =		Yes

post-configure:
	cd ${WRKSRC}/i18n/ && ${MODQT_LRELEASE} *.ts

.include <bsd.port.mk>
