# $OpenBSD: Makefile,v 1.2 2013/05/14 09:16:26 zhuk Exp $

COMMENT =	KDE text to speech application
DISTNAME =	jovie-${MODKDE4_VERSION}

SHARED_LIBS =	kttsd	50.0 # 4.7

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml lib/qt4/Qt3Support
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kde3support ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kemoticons ${KDE4LIB}/kidletime ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/kprintutils ${KDE4LIB}/kutils
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += soprano speechd

LIB_DEPENDS =	audio/speech-dispatcher

.include <bsd.port.mk>
