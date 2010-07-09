# $OpenBSD: Makefile,v 1.11 2010/07/09 10:43:31 espie Exp $

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

SHARED_LIBS +=  searchclient       1.0 # .0.5
SHARED_LIBS +=  streamanalyzer     1.0 # .0.5
SHARED_LIBS +=  streams            1.0 # .0.5
SHARED_LIBS +=  strigihtmlgui      1.0 # .0.5
SHARED_LIBS +=  strigiqtdbusclient 1.0 # .0.5

LIB_DEPENDS =	:clucene-core->=0.9.21:textproc/clucene \
		::archivers/bzip2 \
		::textproc/libxml \
		::x11/qt4 \
		::x11/dbus \
		::graphics/exiv2

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender bz2 c clucene.>=1 dbus-1 exiv2 \
	fontconfig freetype glib-2.0 gthread-2.0 iconv lib/qt4/QtCore \
	lib/qt4/QtDBus lib/qt4/QtGui m png pthread stdc++ xml2 z

MODULES +=		devel/cmake
CONFIGURE_STYLE =	cmake
SEPARATE_BUILD =	simple

CONFIGURE_ARGS +=	-DHyperEstraier_FOUND:BOOL=0

.include <bsd.port.mk>
