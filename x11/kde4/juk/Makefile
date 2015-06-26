# $OpenBSD: Makefile,v 1.14 2015/06/26 09:18:40 ajacoutot Exp $

COMMENT =	music collection manager and player for KDE
DISTNAME =	juk-${MODKDE4_VERSION}
REVISION =	2

CATEGORIES =	audio

WANTLIB =  c m pthread
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kde3support ${KDE4LIB}/kdeui ${KDE4LIB}/khtml
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += soprano tag

MODULES =	multimedia/phonon

BUILD_DEPENDS =	${MODKDE4_DEP_DIR}/libs,-main>=4.11.5p6
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	audio/taglib

# Not ported yet
CONFIGURE_ARGS =	-DWITH_TunePimp:Bool=No

.include <bsd.port.mk>
