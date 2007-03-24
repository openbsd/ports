# $OpenBSD: Makefile,v 1.2 2007/03/24 13:23:59 espie Exp $

COMMENT=		"K Desktop Environment, graphics"
DISTNAME=		kdegraphics-${VERSION}
PKGNAME=		${DISTNAME}p0

LIB_DEPENDS+=	Half,Iex,IlmImf,Imath::graphics/openexr \
		bz2::archivers/bzip2 \
		poppler-qt4::print/poppler,-qt4 \
		sane::graphics/sane-backends \
		Imlib::graphics/imlib

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype jpeg m png
WANTLIB += pthread stdc++ tiff util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml
WANTLIB += gphoto2 gphoto2_port


.include <bsd.port.mk>
