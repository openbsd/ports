# $OpenBSD: Makefile,v 1.2 2013/05/14 09:16:28 zhuk Exp $

COMMENT =	KDE compact discs interface library
DISTNAME =	libkcompactdisc-${MODKDE4_VERSION}

SHARED_LIBS =	kcompactdisc		50.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus
WANTLIB += ${KDE4LIB}/solid

MODULES =	multimedia/phonon
MODKDE4_USE =	libs

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Alsa:Bool=Yes

.include <bsd.port.mk>
