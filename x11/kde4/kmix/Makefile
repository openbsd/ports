# $OpenBSD: Makefile,v 1.3 2013/12/08 19:13:31 zhuk Exp $
COMMENT =	KDE audio mixer
CATEGORIES =	audio
DISTNAME =	kmix-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/plasma ${KDE4LIB}/solid
WANTLIB += canberra glib-2.0 pulse pulse-mainloop-glib

MODKDE4_USE =	libs

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	audio/pulseaudio \
		audio/libcanberra

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Alsa:Bool=Yes

.include <bsd.port.mk>
