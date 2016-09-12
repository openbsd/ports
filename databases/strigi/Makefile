# $OpenBSD: Makefile,v 1.21 2016/09/12 20:58:39 naddy Exp $

COMMENT =	document indexer
CATEGORIES =	databases devel textproc sysutils

HOMEPAGE =	https://projects.kde.org/projects/kdesupport/strigi/

# hand-rolled from strigi* submodules at quickgit.kde.org
DISTNAME =	strigi-0.7.7pl1
REVISION =	1

MASTER_SITES =	https://spacehopper.org/mirrors/ \
		ftp://3ps.if.ua/pub/OpenBSD/distfiles/ \
		http://www.ohvost.ru/dnl/kde/src/

# LGPLv2+
PERMIT_PACKAGE_CDROM =		Yes

SHARED_LIBS +=  searchclient       2.0
SHARED_LIBS +=  streamanalyzer     2.0
SHARED_LIBS +=  streams            2.0
SHARED_LIBS +=  strigihtmlgui      2.0
SHARED_LIBS +=  strigiqtdbusclient 2.0

BUILD_DEPENDS =	devel/cppunit \
		devel/boost

LIB_DEPENDS =	archivers/bzip2 \
		converters/libiconv \
		graphics/exiv2 \
		graphics/ffmpeg \
		sysutils/gamin \
		textproc/clucene>=2.3 \
		textproc/libxml \
		x11/dbus

WANTLIB =  lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += bz2 c clucene-core clucene-shared dbus-1 exiv2 fam iconv m pthread
WANTLIB += stdc++ xml2 z avcodec avformat avutil swscale

MODULES =		devel/cmake \
			x11/qt4

# Not ported
CONFIGURE_ARGS =	-DENABLE_LOG4CXX:Bool=No

# Depends on Java
CONFIGURE_ARGS +=	-DENABLE_REGENERATEXSD:Bool=No

.include <bsd.port.mk>
