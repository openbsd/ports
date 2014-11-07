# $OpenBSD: Makefile,v 1.3 2014/11/07 10:40:05 ajacoutot Exp $

COMMENT =		seafile client

GH_PROJECT = 		seafile-client
GH_COMMIT = 		ba9601b42423e642779dda9540c14874c174220a
REVISION = 		0

WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml lib/qt4/QtXmlPatterns c ccnet crypto gio-2.0
WANTLIB += glib-2.0 gobject-2.0 intl jansson m pthread seafile searpc
WANTLIB += sqlite3 ssl stdc++

MODULES =		devel/cmake devel/gettext x11/qt4
LIB_DEPENDS =		net/seafile/seafile
RUN_DEPENDS = 		devel/desktop-file-utils \
			x11/gtk+2,-guic

NO_TEST =		Yes

post-configure:
	cd ${WRKSRC}/i18n/ && lrelease4 *.ts

.include <bsd.port.mk>
