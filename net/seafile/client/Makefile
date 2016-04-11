# $OpenBSD: Makefile,v 1.10 2016/04/11 15:24:45 kirby Exp $

COMMENT =		seafile client

GH_PROJECT = 		seafile-client

WANTLIB += QtDBus QtGui QtNetwork c ccnet crypto event_core
WANTLIB += event_extra gio-2.0 glib-2.0 gobject-2.0 intl jansson
WANTLIB += m pthread seafile searpc sqlite3 ssl stdc++ uuid

MODULES =		devel/cmake x11/qt4
LIB_DEPENDS =		net/seafile/seafile
RUN_DEPENDS = 		devel/desktop-file-utils \
			x11/gtk+3,-guic

NO_TEST =		Yes

post-configure:
	cd ${WRKSRC}/i18n/ && lrelease4 *.ts

.include <bsd.port.mk>
