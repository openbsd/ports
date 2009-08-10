# $OpenBSD: Makefile,v 1.6 2009/08/10 06:31:07 kili Exp $

SHARED_ONLY =	Yes
COMMENT =	document indexer
CATEGORIES =	databases devel textproc sysutils

HOMEPAGE =	http://strigi.sourceforge.net
DISTNAME =	strigi-0.5.10
PKGNAME =	${DISTNAME}p0
EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=strigi/}

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

SHARED_LIBS +=  cluceneindex       0.0 # .0.5
SHARED_LIBS +=  searchclient       0.0 # .0.5
SHARED_LIBS +=  streamanalyzer     0.0 # .0.5
SHARED_LIBS +=  streams            0.0 # .0.5
SHARED_LIBS +=  strigihtmlgui      0.0 # .0.5
SHARED_LIBS +=  strigiqtdbusclient 0.0 # .0.5

LIB_DEPENDS =		clucene::textproc/clucene \
			bz2::archivers/bzip2 \
			xml2::textproc/libxml \
			lib/qt4/QtCore,lib/qt4/QtGui,lib/qt4/QtDBus::x11/qt4

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrandr Xrender
WANTLIB += c dbus-1 fontconfig freetype glib-2.0 gthread-2.0 iconv
WANTLIB += m png pthread pthread-stubs stdc++ xcb z

MODULES +=		devel/cmake
CONFIGURE_STYLE =	cmake
SEPARATE_BUILD =	simple

CONFIGURE_ARGS +=	-DHyperEstraier_FOUND:BOOL=0

.include <bsd.port.mk>
