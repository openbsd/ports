# $OpenBSD: Makefile,v 1.8 2018/06/27 21:04:16 espie Exp $

COMMENT =	simple tactical game for KDE
DISTNAME =	kjumpingcube-${MODKDE4_VERSION}
REVISION =	3

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
