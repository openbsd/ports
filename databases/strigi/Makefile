# $OpenBSD: Makefile,v 1.33 2020/05/14 19:16:24 rsadowski Exp $

COMMENT =	document indexer
DISTNAME =	strigi-0.7.8
REVISION =	4
CATEGORIES =	databases devel textproc sysutils

HOMEPAGE =	https://www.vandenoever.info/software/strigi/

SHARED_LIBS +=  searchclient       2.0
SHARED_LIBS +=  streamanalyzer     2.0
SHARED_LIBS +=  streams            2.0
SHARED_LIBS +=  strigihtmlgui      2.0
SHARED_LIBS +=  strigiqtdbusclient 2.0

# LGPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} lib/qt4/QtDBus lib/qt4/QtGui avcodec
WANTLIB += avformat avutil bz2 c clucene-core clucene-shared dbus-1
WANTLIB += exiv2 fam iconv m swscale xml2 z

MASTER_SITES =	https://www.vandenoever.info/software/strigi/
EXTRACT_SUFX =	.tar.bz2

COMPILER =	base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			x11/qt4

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	archivers/bzip2 \
		converters/libiconv \
		graphics/exiv2 \
		graphics/ffmpeg \
		sysutils/gamin \
		textproc/clucene>=2.3 \
		textproc/libxml \
		x11/dbus

# Not ported
CONFIGURE_ARGS =	-DENABLE_LOG4CXX=No

# Depends on Java
CONFIGURE_ARGS +=	-DENABLE_REGENERATEXSD=No

# Doesn't build with C++14
CXXFLAGS += 		--std=c++03

.include <bsd.port.mk>
