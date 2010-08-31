# $OpenBSD: Makefile,v 1.10 2010/08/31 08:22:05 jasper Exp $

COMMENT =		K Desktop Environment, graphics
DISTNAME =		kdegraphics-${VERSION}

SHARED_LIBS +=  gwenviewlib          0.0      # .1.0
SHARED_LIBS +=  okularcore           0.0      # .1.0
SHARED_LIBS +=	kolourpaint_lgpl     0.0

# also part of graphics/libkdcraw
SHARED_LIBS +=  kdcraw		     3.0
# also part of graphics/libkexiv2
SHARED_LIBS +=	kexiv2               4.0
# also part of graphics/libkipi
SHARED_LIBS +=	kipi                 2.0
SHARED_LIBS +=	ksane		     0.2

LIB_DEPENDS+=	::x11/kde4/libs \
		::print/poppler,-qt4 \
		::graphics/sane-backends \
		::devel/chmlib \
		::graphics/djvulibre \
		::x11/kde4/qimageblitz \
		::print/libspectre

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm Xxf86vm c chm djvulibre exiv2 \
	freetype gphoto2 gphoto2_port jpeg kde3support kdecore.>=8 kdeui kfile \
	khtml kio kjs kjsapi kparts kpty kutils lcms lib/qt4/Qt3Support \
	lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg \
	lib/qt4/QtXml m nepomuk phonon poppler-qt4 pthread qca qimageblitz \
	sane soprano spectre stdc++ streamanalyzer streams threadweaver tiff z

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
