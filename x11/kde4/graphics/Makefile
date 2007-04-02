# $OpenBSD: Makefile,v 1.3 2007/04/02 20:27:52 espie Exp $

COMMENT=		"K Desktop Environment, graphics"
DISTNAME=		kdegraphics-${VERSION}
PKGNAME=		${DISTNAME}p1

SHARED_LIBS +=	djvu                 0.0      # .0.0
SHARED_LIBS +=	kghostviewlib        2.0      # .1.0
SHARED_LIBS +=	kscan                3.0      # .1.0
SHARED_LIBS +=	ligaturePluginGUI    0.0      # .2.0
SHARED_LIBS +=	ligaturecore         0.0      # .2.0
SHARED_LIBS +=	lkpovmodeler         0.0      # .0.0

LIB_DEPENDS+=	kdecore.>=8,kde3support,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kutils,kwalletclient::x11/kde4/libs \
		poppler-qt4::print/poppler,-qt4 \
		sane::graphics/sane-backends \
		Imlib::graphics/imlib

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype jpeg m png
WANTLIB += pthread stdc++ tiff util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml
WANTLIB += gphoto2 gphoto2_port
WANTLIB += Half Iex IlmImf Imath bz2
WANTLIB += GL GLU Xmu Xxf86vm


.include <bsd.port.mk>
