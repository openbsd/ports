# $OpenBSD: Makefile,v 1.13 2014/07/10 19:55:27 zhuk Exp $

COMMENT =	KDE document viewer
DISTNAME =	okular-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	okularcore		51.0	# 1.7

WANTLIB =  c m pthread z
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kactivities ${KDE4LIB}/kdeui ${KDE4LIB}/kexiv2
WANTLIB += ${KDE4LIB}/khtml
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/kjsapi
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/kprintutils ${KDE4LIB}/kpty
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/qmobipocket
WANTLIB += chm djvulibre epub freetype jpeg kscreen poppler-qt4 qca2 qimageblitz
WANTLIB += qjson soprano solid spectre threadweaver tiff

MODULES =	multimedia/phonon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS = 	devel/chmlib \
		devel/qjson \
		graphics/djvulibre \
		graphics/qimageblitz \
		graphics/tiff \
		print/libspectre \
		print/poppler,,-qt4 \
		security/qca2 \
		textproc/ebook-tools \
		x11/libkscreen \
		${MODKDE4_DEP_DIR}/graphics-mobipocket>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/kactivities>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/libkexiv2>=${MODKDE4_DEP_VERSION}

# Not ported yet, extragear stuff
CONFIGURE_ARGS =	-DWITH_ActiveApp=No

TEST_IS_INTERACTIVE =	X11

# unbreak build of tests
post-configure:
	ln -sf okularpart.so ${WRKBUILD}/lib/libokularpart.so

.include <bsd.port.mk>
