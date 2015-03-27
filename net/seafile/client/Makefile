# $OpenBSD: Makefile,v 1.7 2015/03/27 08:13:03 ajacoutot Exp $

COMMENT =		seafile client

GH_PROJECT = 		seafile-client
GH_COMMIT = 		a46c6c1c62bfb08a303f0c1a52fee824e5b279bf
REVISION =		0

WANTLIB += QtDBus QtGui QtNetwork QtXml c ccnet crypto gio-2.0
WANTLIB += glib-2.0 gobject-2.0 jansson m pthread seafile searpc
WANTLIB += sqlite3 ssl stdc++

MODULES =		devel/cmake devel/gettext x11/qt4
LIB_DEPENDS =		net/seafile/seafile
RUN_DEPENDS = 		devel/desktop-file-utils \
			x11/gtk+3,-guic

NO_TEST =		Yes

post-configure:
	cd ${WRKSRC}/i18n/ && lrelease4 *.ts

.include <bsd.port.mk>
