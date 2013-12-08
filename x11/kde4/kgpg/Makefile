# $OpenBSD: Makefile,v 1.3 2013/12/08 19:13:30 zhuk Exp $

COMMENT =	KDE interface to GnuPG
DISTNAME =	kgpg-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kabc ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kemoticons ${KDE4LIB}/kidletime ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/kpimutils ${KDE4LIB}/kprintutils
WANTLIB += ${KDE4LIB}/kresources ${KDE4LIB}/kutils ${KDE4LIB}/solid

MODKDE4_USE =	pim

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
