# $OpenBSD: Makefile,v 1.5 2014/07/11 12:18:37 espie Exp $
COMMENT =	KDE audio mixer
CATEGORIES =	audio
DISTNAME =	kmix-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/plasma ${KDE4LIB}/solid
WANTLIB += canberra glib-2.0 pulse pulse-mainloop-glib

MODULES =	multimedia/phonon
MODKDE4_USE =	libs

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	audio/pulseaudio \
		audio/libcanberra

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Alsa:Bool=Yes

.include <bsd.port.mk>
