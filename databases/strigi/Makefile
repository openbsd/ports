# $OpenBSD: Makefile,v 1.27 2018/11/25 16:30:37 rsadowski Exp $

COMMENT =	document indexer
DISTNAME =	strigi-0.7.8

CATEGORIES =	databases devel textproc sysutils

HOMEPAGE =	https://www.vandenoever.info/software/strigi/

SHARED_LIBS +=  searchclient       2.0
SHARED_LIBS +=  streamanalyzer     2.0
SHARED_LIBS +=  streams            2.0
SHARED_LIBS +=  strigihtmlgui      2.0
SHARED_LIBS +=  strigiqtdbusclient 2.0

# LGPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += ${COMPILER_LIBCXX} lib/qt4/QtDBus lib/qt4/QtGui avcodec
WANTLIB += avformat avutil bz2 c clucene-core clucene-shared dbus-1
WANTLIB += exiv2 fam iconv m swscale xml2

MASTER_SITES =	https://www.vandenoever.info/software/strigi/
EXTRACT_SUFX =	.tar.bz2

COMPILER =	base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			x11/qt4

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

# Not ported
CONFIGURE_ARGS =	-DENABLE_LOG4CXX=No

# Depends on Java
CONFIGURE_ARGS +=	-DENABLE_REGENERATEXSD=No

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
CXXFLAGS += --std=c++03
.endif

.include <bsd.port.mk>
