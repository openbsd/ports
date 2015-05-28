# $OpenBSD: Makefile,v 1.8 2015/05/28 10:17:28 pascal Exp $
COMMENT =	KDE audio mixer
CATEGORIES =	audio
DISTNAME =	kmix-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/plasma ${KDE4LIB}/solid
WANTLIB += canberra glib-2.0 pulse pulse-mainloop-glib

MODULES =	multimedia/phonon
MODKDE4_USE =	libs

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	audio/pulseaudio \
		audio/libcanberra

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Alsa:Bool=Yes

.include <bsd.port.mk>
