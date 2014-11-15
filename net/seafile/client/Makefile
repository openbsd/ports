# $OpenBSD: Makefile,v 1.4 2014/11/15 16:34:36 kirby Exp $

COMMENT =		seafile client

GH_PROJECT = 		seafile-client
GH_COMMIT = 		e54d6b666744ee1afd8291c756273d522de4dc5f

WANTLIB += QtDBus QtGui QtNetwork QtWebKit QtXml QtXmlPatterns
WANTLIB += c ccnet crypto gio-2.0 glib-2.0 gobject-2.0 intl jansson
WANTLIB += m pthread seafile searpc sqlite3 ssl stdc++

MODULES =		devel/cmake devel/gettext x11/qt4
LIB_DEPENDS =		net/seafile/seafile
RUN_DEPENDS = 		devel/desktop-file-utils \
			x11/gtk+2,-guic

NO_TEST =		Yes

post-configure:
	cd ${WRKSRC}/i18n/ && lrelease4 *.ts

.include <bsd.port.mk>
