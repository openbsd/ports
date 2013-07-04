# $OpenBSD: Makefile,v 1.3 2013/07/04 00:46:23 zhuk Exp $

COMMENT =	KDE compact discs interface library
DISTNAME =	libkcompactdisc-${MODKDE4_VERSION}

SHARED_LIBS =	kcompactdisc		50.0

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus
WANTLIB += ${KDE4LIB}/solid

MODULES =	multimedia/phonon
MODKDE4_USE =	libs

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Alsa:Bool=Yes

.include <bsd.port.mk>
