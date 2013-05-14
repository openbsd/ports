# $OpenBSD: Makefile,v 1.2 2013/05/14 09:16:28 zhuk Exp $

COMMENT =	KDE RAW picture decoding C++ library
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

CONFIGURE_ARGS =	-DWITH_OpenMP:Bool=FALSE

post-extract:
	cp ${FILESDIR}/*.cmake ${WRKSRC}/cmake/modules/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apps/cmake/modules
	${INSTALL_DATA} ${WRKSRC}/cmake/modules/FindKdcraw.cmake \
		 ${PREFIX}/share/apps/cmake/modules/

.include <bsd.port.mk>
