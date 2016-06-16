# $OpenBSD: Makefile,v 1.12 2016/06/16 16:35:51 kirby Exp $

COMMENT =		seafile client

GH_PROJECT = 		seafile-client

WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5Test Qt5Widgets c ccnet
WANTLIB += crypto event_core event_extra gio-2.0 glib-2.0 gobject-2.0
WANTLIB += intl jansson m pthread seafile searpc sqlite3 ssl uuid

MODULES =		devel/cmake x11/qt5
LIB_DEPENDS =		net/seafile/seafile
RUN_DEPENDS = 		devel/desktop-file-utils \
			x11/gtk+3,-guic

NO_TEST =		Yes

post-configure:
	cd ${WRKSRC}/i18n/ && ${MODQT_LRELEASE} *.ts

.include <bsd.port.mk>
