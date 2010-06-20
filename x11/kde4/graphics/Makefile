# $OpenBSD: Makefile,v 1.7 2010/06/20 14:36:23 espie Exp $

COMMENT =		K Desktop Environment, graphics
DISTNAME =		kdegraphics-${VERSION}
PKGNAME =		${DISTNAME}

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

LIB_DEPENDS+=	kdecore.>=8,kde3support,kdeui,kio,kparts,kutils,kfile,khtml,kjs,kpty,kjsapi,nepomuk,threadweaver::x11/kde4/libs \
		poppler-qt4::print/poppler,-qt4 \
		sane::graphics/sane-backends \
		chm::devel/chmlib \
		djvulibre::graphics/djvulibre \
		qimageblitz::x11/kde4/qimageblitz \
		spectre::print/libspectre

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm
WANTLIB += c freetype m
WANTLIB += pthread stdc++ tiff z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml QtNetwork
WANTLIB += gphoto2 gphoto2_port
WANTLIB += soprano lcms exiv2 jpeg
WANTLIB += Xxf86vm phonon
WANTLIB += streamanalyzer streams

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
