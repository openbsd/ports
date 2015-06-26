# $OpenBSD: Makefile,v 1.10 2015/06/26 09:18:40 ajacoutot Exp $

COMMENT =	KDE compact discs interface library
CATEGORIES =	audio net devel
DISTNAME =	libkcompactdisc-${MODKDE4_VERSION}
REVISION =	1

SHARED_LIBS =	kcompactdisc		50.0

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus
WANTLIB += ${KDE4LIB}/solid

MODULES =	multimedia/phonon
MODKDE4_USE =	libs

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Alsa:Bool=Yes

.include <bsd.port.mk>
