# $OpenBSD: Makefile,v 1.1.1.1 2007/03/22 22:24:33 espie Exp $

COMMENT=		"K Desktop Environment, libraries"
DISTNAME=		kdelibs-${VERSION}

LIB_DEPENDS+=	Half,Iex,IlmImf,Imath::graphics/openexr \
		gif::graphics/libungif \
		jasper::graphics/jasper \
		bz2::archivers/bzip2 \
		aspell::textproc/aspell/core \
		xslt::textproc/libxslt \
		pcre,pcreposix::devel/pcre


WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype jpeg m png
WANTLIB += pthread stdc++ tiff util z
WANTLIB += Qt3Support QtDBus QtDesigner QtGui QtSvg QtXml xml2



.include <bsd.port.mk>
