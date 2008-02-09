# $OpenBSD: Makefile,v 1.6 2008/02/09 13:18:16 espie Exp $

COMMENT =		K Desktop Environment, graphics
DISTNAME =		kdegraphics-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS +=  gwenviewlib          0.0      # .1.0
SHARED_LIBS +=  kolourpaint4_lgpl    0.0      # .4.0
SHARED_LIBS +=  okularcore           0.0      # .1.0
SHARED_LIBS +=  spectreOkular	     0.0      # .1.0

LIB_DEPENDS+=	kdecore.>=8,kde3support,kdeui,kio,kparts,kutils,kfile,khtml,kjs,knewstuff2,kpty,ktexteditor,phonon,solid,threadweaver::x11/kde4/libs \
		poppler-qt4::print/poppler,-qt4 \
		sane::graphics/sane-backends \
		chm::devel/chmlib \
		djvulibre::graphics/djvulibre \
		qimageblitz::x11/kde4/qimageblitz \
		gs:ghostscript->=8.56-gtk:print/ghostscript/gnu,gtk

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype jpeg m png
WANTLIB += pthread stdc++ tiff util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml QtNetwork
WANTLIB += gphoto2 gphoto2_port
WANTLIB += bz2
WANTLIB += Xxf86vm
WANTLIB += Xfixes dbus-1 exiv2 fam gif glib-2.0 gthread-2.0 iconv
WANTLIB += intl pcre pcreposix poppler streamanalyzer streams



.include <bsd.port.mk>
