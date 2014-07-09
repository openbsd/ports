# $OpenBSD: Makefile,v 1.14 2014/07/09 20:03:28 zhuk Exp $

COMMENT-main =	KDE RAW picture decoding C++ library
COMMENT-icons =	icons for libkdcraw
CATEGORIES =	graphics devel
DISTNAME =	libkdcraw-${MODKDE4_VERSION}
PKGNAME-main =	${DISTNAME}
PKGNAME-icons =	kde4-libkdcraw-icons-${MODKDE4_VERSION}
PKGSPEC-main =	libkdcraw->=4,<5

SHARED_LIBS =	kdcraw			50.0	# 20.0

WANTLIB-icons =
WANTLIB-main =  ${WANTLIB} m pthread
WANTLIB-main += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB-main += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB-main += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/solid
WANTLIB-main += ${KDE4LIB}/threadweaver
WANTLIB-main += raw_r

MULTI_PACKAGES =	-main -icons

MODKDE4_USE =		libs

LIB_DEPENDS-icons =
LIB_DEPENDS-main = 	${LIB_DEPENDS} \
			graphics/libraw

RUN_DEPENDS-icons =	x11/gtk+2,-guic
RUN_DEPENDS-main =	${RUN_DEPENDS} \
			${BUILD_PKGPATH},-icons

post-extract:
#	cp ${FILESDIR}/*.cmake ${WRKSRC}/cmake/modules/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apps/cmake/modules
	${INSTALL_DATA} ${WRKSRC}/cmake/modules/FindKdcraw.cmake \
		 ${PREFIX}/share/apps/cmake/modules/

.include <bsd.port.mk>
