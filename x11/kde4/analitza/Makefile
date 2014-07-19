# $OpenBSD: Makefile,v 1.6 2014/07/19 09:19:53 zhuk Exp $

COMMENT =	KDE math features
DISTNAME =	analitza-${MODKDE4_VERSION}

SHARED_LIBS =	analitza		51.1	# 4.7
SHARED_LIBS +=	analitzagui		51.1	# 4.7
SHARED_LIBS +=	analitzaplot		51.1	# 4.10

WANTLIB =  c m pthread
WANTLIB += GL GLU
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += curses form readline

.include <bsd.port.mk>
