# $OpenBSD: Makefile,v 1.41 2021/06/19 10:38:44 kirby Exp $

COMMENT =		seafile client

GH_ACCOUNT =		haiwen
GH_PROJECT =		seafile-client
# upstream keep on sliding tags to pull in new commits
# this commit is from the "v8.0.2" tag
GH_COMMIT =		837be8efd5cab4aea8fc1138ab91e93539a4e010
DISTNAME =		seafile-client-8.0.2pl20210513

WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets c
WANTLIB += crypto event_core event_extra gio-2.0 glib-2.0 gobject-2.0
WANTLIB += intl jansson m pthread seafile searpc sqlite3 ssl z
WANTLIB += ${COMPILER_LIBCXX}

MODULES =		devel/cmake x11/qt5
LIB_DEPENDS =		net/seafile/seafile \
			databases/sqlite3
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

NO_TEST =		Yes

post-configure:
	cd ${WRKSRC}/i18n/ && ${MODQT_LRELEASE} *.ts

.include <bsd.port.mk>
