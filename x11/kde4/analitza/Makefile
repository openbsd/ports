# $OpenBSD: Makefile,v 1.4 2013/12/08 19:13:29 zhuk Exp $

COMMENT =	KDE math features
DISTNAME =	analitza-${MODKDE4_VERSION}

SHARED_LIBS =	analitza		51.0	# 4.7
SHARED_LIBS +=	analitzagui		51.0	# 4.7
SHARED_LIBS +=	analitzaplot		51.0	# 4.10

WANTLIB =  c m pthread stdc++
WANTLIB += GL GLU
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += ncurses readline

CONFIGURE_ARGS=	-DCMAKE_SHARED_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib"

post-extract:
	cp ${FILESDIR}/FindNcurses.cmake ${WRKSRC}/cmake/

.include <bsd.port.mk>
