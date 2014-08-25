# $OpenBSD: Makefile,v 1.2 2014/08/25 14:07:49 jasper Exp $

COMMENT =		flexible communications framework, Qt bindings
DISTNAME =		telepathy-qt-0.9.3
MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

SHARED_LIBS =		telepathy-qt4		0.0
SHARED_LIBS +=		telepathy-qt4-farstream	0.0

HOMEPAGE =		${HOMEPAGE_TP:=Telepathy Qt}

MASTER_SITES =		${MASTER_SITES_TP:=telepathy-qt/}

WANTLIB =  lib/qt4/QtDBus lib/qt4/QtNetwork lib/qt4/QtXml m stdc++
WANTLIB += telepathy-farstream telepathy-glib

MODULES =		devel/cmake \
			devel/gettext \
			lang/python \
			x11/qt4

MODPY_RUNDEP =		No

BUILD_DEPENDS =		devel/gobject-introspection \
			textproc/libxslt
LIB_DEPENDS =		net/telepathy/telepathy-farstream \
			net/telepathy/telepathy-glib

CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS =	-DDESIRED_QT_VERSION=4
USE_GMAKE =		No

# XXX One test fails, but this place marked as FIXME already.

pre-configure:
	@${MODPY_BIN_ADJ} ${WRKSRC}/tools/*.py

.include <bsd.port.mk>
