# $OpenBSD: Makefile,v 1.11 2019/01/23 18:45:21 naddy Exp $

COMMENT =	KDE educational Logo programming environment
DISTNAME =	kturtle-${MODKDE4_VERSION}
REVISION =	5

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
