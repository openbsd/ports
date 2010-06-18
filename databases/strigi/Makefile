# $OpenBSD: Makefile,v 1.9 2010/06/18 15:09:41 sthen Exp $

SHARED_ONLY =	Yes
COMMENT =	document indexer
CATEGORIES =	databases devel textproc sysutils

HOMEPAGE =	http://strigi.sourceforge.net
DISTNAME =	strigi-0.7.2
PKGNAME =	${DISTNAME}
EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	http://www.vandenoever.info/software/strigi/ \
		http://spacehopper.org/mirrors/

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

SHARED_LIBS +=  cluceneindex       1.0 # .0.5
SHARED_LIBS +=  searchclient       1.0 # .0.5
SHARED_LIBS +=  streamanalyzer     1.0 # .0.5
SHARED_LIBS +=  streams            1.0 # .0.5
SHARED_LIBS +=  strigihtmlgui      1.0 # .0.5
SHARED_LIBS +=  strigiqtdbusclient 1.0 # .0.5

LIB_DEPENDS =		clucene->=1:clucene->=0.9.21:textproc/clucene \
			bz2::archivers/bzip2 \
			xml2::textproc/libxml \
			lib/qt4/QtCore,lib/qt4/QtGui,lib/qt4/QtDBus::x11/qt4 \
			dbus-1::x11/dbus \
			exiv2::graphics/exiv2

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender
WANTLIB += c fontconfig freetype glib-2.0 gthread-2.0 iconv
WANTLIB += m png pthread stdc++ z

MODULES +=		devel/cmake
CONFIGURE_STYLE =	cmake
SEPARATE_BUILD =	simple

CONFIGURE_ARGS +=	-DHyperEstraier_FOUND:BOOL=0

.include <bsd.port.mk>
