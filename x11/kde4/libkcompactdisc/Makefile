# $OpenBSD: Makefile,v 1.11 2017/07/27 11:57:50 sthen Exp $

COMMENT =	KDE compact discs interface library
CATEGORIES =	audio net devel
DISTNAME =	libkcompactdisc-${MODKDE4_VERSION}
REVISION =	2

SHARED_LIBS =	kcompactdisc		50.0

WANTLIB =  m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus
WANTLIB += ${KDE4LIB}/solid

MODULES =	multimedia/phonon
MODKDE4_USE =	libs

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Alsa:Bool=Yes

.include <bsd.port.mk>
