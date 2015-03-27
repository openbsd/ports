# $OpenBSD: Makefile,v 1.15 2015/03/27 08:16:22 ajacoutot Exp $

COMMENT-main =	KDE image plugins infrastructure
COMMENT-icons =	icons for libkipi
CATEGORIES =	graphics devel
DISTNAME =	libkipi-${MODKDE4_VERSION}
PKGNAME-main =	${DISTNAME}
PKGNAME-icons =	kde4-libkipi-icons-${MODKDE4_VERSION}
PKGSPEC-main =	libkipi-${MODKDE4_SPEC}
REVISION-icons =0
REVISION-main =	0

SHARED_LIBS =	kipi		50.1

WANTLIB-icons =
WANTLIB-main =  ${WANTLIB} c m pthread
WANTLIB-main += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB-main += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB-main += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kfile
WANTLIB-main += ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB-main += soprano

MULTI_PACKAGES =	-main -icons

MODKDE4_USE =		libs

RUN_DEPENDS-icons =	x11/gtk+3,-guic
RUN_DEPENDS-main =	${RUN_DEPENDS} \
			${BUILD_PKGPATH},-icons

LIB_DEPENDS-icons =

post-patch:
	cd ${WRKSRC}; \
	perl -pi -e '$$.==1 and $$_ = "/*\n"' tests/kipitestmainwindow.cpp

.include <bsd.port.mk>
