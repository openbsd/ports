# $OpenBSD: Makefile,v 1.1.1.1 2014/10/04 18:47:55 kirby Exp $

COMMENT =		seafile client

GH_PROJECT = 		seafile-client
GH_COMMIT = 		ba9601b42423e642779dda9540c14874c174220a

WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml lib/qt4/QtXmlPatterns c ccnet crypto gio-2.0
WANTLIB += glib-2.0 gobject-2.0 intl jansson m pthread seafile searpc
WANTLIB += sqlite3 ssl stdc++

MODULES =		devel/cmake devel/gettext x11/qt4
LIB_DEPENDS =		net/seafile/seafile
RUN_DEPENDS = 		devel/desktop-file-utils \
			x11/gtk+2,-guic

CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=Release

NO_TEST =		Yes

post-configure:
	cd ${WRKSRC}/i18n/ && lrelease4 *.ts

.include <bsd.port.mk>
