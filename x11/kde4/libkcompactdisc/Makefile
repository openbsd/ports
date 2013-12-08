# $OpenBSD: Makefile,v 1.5 2013/12/08 19:13:32 zhuk Exp $

COMMENT =	KDE compact discs interface library
CATEGORIES =	audio net devel
DISTNAME =	libkcompactdisc-${MODKDE4_VERSION}

SHARED_LIBS =	kcompactdisc		50.0

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus
WANTLIB += ${KDE4LIB}/solid

MODULES =	multimedia/phonon
MODKDE4_USE =	libs

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Alsa:Bool=Yes

.include <bsd.port.mk>
