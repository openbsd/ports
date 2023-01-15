# qmake picks up gcrypt.h even though it's unused
DPB_PROPERTIES =	nojunk

VER =		4.4.3.1
DISTNAME =	qbittorrent-${VER}

DIST_SUBDIR =	qbittorrent

CATEGORIES ?=	net

HOMEPAGE ?=	https://www.qbittorrent.org

MAINTAINER =	Elias M. Mariani <marianielias@gmail.com>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES ?=	${MASTER_SITE_SOURCEFORGE:=qbittorrent/}

MODULES +=	devel/cmake \
		x11/qt5

CONFIGURE_STYLE =	cmake
# for automatic stacktraces on crash:  autoconf links it, cmake does not
CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS='${LDFLAGS} -lexecinfo'
