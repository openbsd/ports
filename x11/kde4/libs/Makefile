# $OpenBSD: Makefile,v 1.2 2007/03/27 09:45:56 espie Exp $

COMMENT=		"K Desktop Environment, libraries"
DISTNAME=		kdelibs-${VERSION}
PKGNAME=		${DISTNAME}p0

SHARED_LIBS +=	kaudiodevicelist     4.0      # .4.0
SHARED_LIBS +=	kde3support          0.0      # .4.0
SHARED_LIBS +=	kdecore              8.0      # .5.0
SHARED_LIBS +=	kdefakes             8.0      # .5.0
SHARED_LIBS +=	kdefx                8.0      # .5.0
SHARED_LIBS +=	kdeprint             8.0      # .5.0
SHARED_LIBS +=	kdeprint_management  8.0      # .5.0
SHARED_LIBS +=	kdesu                8.0      # .5.0
SHARED_LIBS +=	kdeui                8.0      # .5.0
SHARED_LIBS +=	kdnssd               3.0      # .2.0
SHARED_LIBS +=	khtml                8.0      # .5.0
SHARED_LIBS +=	kimproxy             2.0      # .4.0
SHARED_LIBS +=	kio                  8.0      # .5.0
SHARED_LIBS +=	kjs                  5.0      # .2.0
SHARED_LIBS +=	kjsembed             3.0      # .4.0
SHARED_LIBS +=	kmediaplayer         2.0      # .4.0
SHARED_LIBS +=	knewstuff            3.0      # .4.0
SHARED_LIBS +=	knotifyconfig        0.0      # .4.0
SHARED_LIBS +=	kntlm                2.0      # .1.0
SHARED_LIBS +=	kparts               5.0      # .4.0
SHARED_LIBS +=	krosscore            0.0      # .4.0
SHARED_LIBS +=	ktexteditor          2.0      # .4.0
SHARED_LIBS +=	kunittest            3.0      # .4.0
SHARED_LIBS +=	kutils               5.0      # .2.0
SHARED_LIBS +=	kwalletbackend       3.0      # .4.0
SHARED_LIBS +=	kwalletclient        3.0      # .4.0
SHARED_LIBS +=	kxmlcore             0.0      # .4.0
SHARED_LIBS +=	phononcore           0.0      # .4.0
SHARED_LIBS +=	phononui             0.0      # .4.0
SHARED_LIBS +=	solid                0.0      # .4.0
SHARED_LIBS +=	solidifaces          0.0      # .4.0
SHARED_LIBS +=	sonnetcore           0.0      # .4.0
SHARED_LIBS +=	sonnetui             0.0      # .4.0
SHARED_LIBS +=	threadweaver         0.0      # .4.0

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
