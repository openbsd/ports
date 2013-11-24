# $OpenBSD: Makefile,v 1.5 2013/11/24 19:56:32 zhuk Exp $

COMMENT =	KDE RAW picture decoding C++ library
DISTNAME =	libkdcraw-${MODKDE4_VERSION}
REVISION =	1

SHARED_LIBS =	kdcraw			50.0	# 20.0

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/solid
WANTLIB += ${KDE4LIB}/threadweaver
WANTLIB += raw_r

MODKDE4_USE =	libs

RUN_DEPENDS =	x11/gtk+2,-guic

LIB_DEPENDS = 	graphics/libraw

post-extract:
	cp ${FILESDIR}/*.cmake ${WRKSRC}/cmake/modules/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apps/cmake/modules
	${INSTALL_DATA} ${WRKSRC}/cmake/modules/FindKdcraw.cmake \
		 ${PREFIX}/share/apps/cmake/modules/

.include <bsd.port.mk>
