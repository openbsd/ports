# $OpenBSD: Makefile,v 1.9 2017/07/27 11:57:48 sthen Exp $

COMMENT =	KDE math features
DISTNAME =	analitza-${MODKDE4_VERSION}
REVISION =	1

SHARED_LIBS =	analitza		51.1	# 4.7
SHARED_LIBS +=	analitzagui		51.1	# 4.7
SHARED_LIBS +=	analitzaplot		51.1	# 4.10

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLU
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += ncurses form readline

.include <bsd.port.mk>
