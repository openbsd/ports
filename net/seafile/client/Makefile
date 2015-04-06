# $OpenBSD: Makefile,v 1.9 2015/04/06 20:59:47 kirby Exp $

COMMENT =		seafile client

GH_PROJECT = 		seafile-client

WANTLIB += QtDBus QtGui QtNetwork c ccnet crypto event_core
WANTLIB += event_extra gio-2.0 glib-2.0 gobject-2.0 jansson
WANTLIB += m pthread seafile searpc sqlite3 ssl stdc++ uuid

MODULES =		devel/cmake devel/gettext x11/qt4
LIB_DEPENDS =		net/seafile/seafile
RUN_DEPENDS = 		devel/desktop-file-utils \
			x11/gtk+3,-guic

NO_TEST =		Yes

post-configure:
	cd ${WRKSRC}/i18n/ && lrelease4 *.ts

.include <bsd.port.mk>
