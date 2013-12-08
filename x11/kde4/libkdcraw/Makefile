# $OpenBSD: Makefile,v 1.6 2013/12/08 19:13:32 zhuk Exp $

COMMENT =	KDE RAW picture decoding C++ library
CATEGORIES =	graphics devel
DISTNAME =	libkdcraw-${MODKDE4_VERSION}

SHARED_LIBS =	kdcraw			50.0	# 20.0

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/solid
WANTLIB += ${KDE4LIB}/threadweaver
WANTLIB += raw_r

MODKDE4_USE =	libs

LIB_DEPENDS = 	graphics/libraw

# Share same icons, avoid conflict
RUN_DEPENDS =	graphics/libkdcraw,-icons

post-extract:
	cp ${FILESDIR}/*.cmake ${WRKSRC}/cmake/modules/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apps/cmake/modules
	${INSTALL_DATA} ${WRKSRC}/cmake/modules/FindKdcraw.cmake \
		 ${PREFIX}/share/apps/cmake/modules/

.include <bsd.port.mk>
