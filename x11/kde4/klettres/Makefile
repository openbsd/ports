# $OpenBSD: Makefile,v 1.12 2018/06/29 22:16:28 espie Exp $

COMMENT =	alphabet learning application for KDE
DISTNAME =	klettres-${MODKDE4_VERSION}
REVISION =	5

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/knewstuff3

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
