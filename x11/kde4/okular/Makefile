# $OpenBSD: Makefile,v 1.11 2014/01/15 19:42:11 zhuk Exp $

COMMENT =	KDE document viewer
DISTNAME =	okular-${MODKDE4_VERSION}

SHARED_LIBS =	okularcore		51.0	# 1.7

WANTLIB =  c m pthread stdc++ z
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kactivities ${KDE4LIB}/kdeui ${KDE4LIB}/khtml
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/kjsapi
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/kprintutils ${KDE4LIB}/kpty
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += chm djvulibre epub freetype jpeg poppler-qt4 qca2 qimageblitz
WANTLIB += soprano solid spectre threadweaver tiff

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS = 	devel/chmlib \
		graphics/djvulibre \
		graphics/qimageblitz \
		graphics/tiff \
		print/libspectre \
		print/poppler,,-qt4 \
		security/qca2 \
		textproc/ebook-tools \
		${MODKDE4_DEP_DIR}/kactivities>=${MODKDE4_DEP_VERSION}

# Not ported yet, extragear stuff
CONFIGURE_ARGS =	-DWITH_ActiveApp:Bool=No

.include <bsd.port.mk>
