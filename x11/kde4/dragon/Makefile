# $OpenBSD: Makefile,v 1.10 2015/06/26 09:18:40 ajacoutot Exp $

COMMENT =	simple video player for KDE
DISTNAME =	dragon-${MODKDE4_VERSION}
REVISION =	2

CATEGORIES =	multimedia

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/plasma ${KDE4LIB}/solid
WANTLIB += soprano

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# XXX share/apps/solid/ should be kept in PLIST,
# it comes from vlc via phonon-vlc, and the latter
# could be swapped with phonon-gstreamer instead.

.include <bsd.port.mk>
