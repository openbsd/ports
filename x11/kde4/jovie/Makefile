# $OpenBSD: Makefile,v 1.9 2015/05/28 10:17:26 pascal Exp $

COMMENT =	KDE text to speech application
DISTNAME =	jovie-${MODKDE4_VERSION}
REVISION =	1

SHARED_LIBS =	kttsd	51.0 # 4.7

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kemoticons ${KDE4LIB}/kidletime ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/kprintutils ${KDE4LIB}/kutils
WANTLIB += speechd

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	audio/speech-dispatcher

.include <bsd.port.mk>
