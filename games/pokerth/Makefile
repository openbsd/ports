# $OpenBSD: Makefile,v 1.45 2019/07/12 20:46:22 sthen Exp $

COMMENT=	texas hold'em poker game with online capabilities
#'
BROKEN-hppa =	needs atomic ops

DISTNAME =	pokerth-1.1.2
REVISION =	4

CATEGORIES=	games x11

HOMEPAGE=	https://www.pokerth.net/

# AGPL3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE QtGui QtNetwork QtSql SDL SDL_mixer
WANTLIB += SM X11 Xext Xi Xinerama Xrender boost_chrono-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_program_options-mt boost_random-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c crypto
WANTLIB += curl fontconfig freetype gsasl iconv ircclient m protobuf
WANTLIB += sqlite3 ssl tinyxml

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pokerth/}

# C++11
COMPILER =	base-clang ports-gcc base-gcc
CXXFLAGS +=	-std=gnu++11

MODULES=	devel/qmake \
		x11/qt4

MODQMAKE_PROJECTS =	pokerth.pro

RUN_DEPENDS=	devel/desktop-file-utils

LIB_DEPENDS=	converters/libiconv \
		databases/sqlite3 \
		devel/sdl-mixer \
		devel/boost \
		devel/protobuf \
		net/curl \
		net/libircclient \
		security/libgsasl \
		textproc/tinyxml

BUILD_DEPENDS =	devel/protobuf

CONFIGURE_ENV=	HOME=${WRKDIR}

NO_TEST=	Yes
USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}-rc

MODQMAKE_ARGS +=	CONFIG+="client"

pre-configure:
	cd ${WRKSRC} && \
		protoc --cpp_out=src/third_party/protobuf chatcleaner.proto && \
		protoc --cpp_out=src/third_party/protobuf pokerth.proto

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/pokerth ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/pokerth_server ${PREFIX}/bin

.include <bsd.port.mk>
