# $OpenBSD: Makefile,v 1.6 2014/11/08 14:10:26 landry Exp $

# XXX: PORTROACH set below to override the value from ../Makefile.inc

COMMENT =		flexible communications framework, Qt bindings
DISTNAME =		telepathy-qt-0.9.5
REVISION =		1
MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

SHARED_LIBS =		telepathy-qt4		0.1
SHARED_LIBS +=		telepathy-qt4-farstream	0.1
SHARED_LIBS +=		telepathy-qt4-service	0.0

HOMEPAGE =		${HOMEPAGE_TP:=Telepathy Qt}

MASTER_SITES =		${MASTER_SITES_TP:=telepathy-qt/}

WANTLIB =  lib/qt4/QtDBus lib/qt4/QtNetwork lib/qt4/QtXml m stdc++
WANTLIB += telepathy-farstream telepathy-glib
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0

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

PORTROACH =		# empty
