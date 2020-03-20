# $OpenBSD: Makefile,v 1.47 2020/03/20 16:44:23 naddy Exp $

COMMENT=	texas hold'em poker game with online capabilities
#'
BROKEN-hppa =	needs atomic ops

DISTNAME =	pokerth-1.1.2
REVISION =	5

CATEGORIES=	games x11

HOMEPAGE=	https://www.pokerth.net/

# AGPL3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Sql
WANTLIB += Qt5Widgets SDL SDL_mixer boost_chrono-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_program_options-mt boost_random-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c crypto
WANTLIB += curl gsasl iconv ircclient m protobuf sqlite3 ssl tinyxml

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pokerth/}

# C++11
CXXFLAGS +=	-std=gnu++11

MODULES=	devel/qmake \
		x11/qt5

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

CONFIGURE_ENV=	HOME=${WRKDIR}

NO_TEST=	Yes
USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}-rc

MODQMAKE_ARGS +=	CONFIG+="client"

pre-configure:
	cd ${WRKSRC} && \
		protoc --cpp_out=src/third_party/protobuf chatcleaner.proto && \
		protoc --cpp_out=src/third_party/protobuf pokerth.proto && \
	find . -name "*.pro" -exec perl -pi -e 's,qmake,${MODQT5_QMAKE},g;' {} +

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/pokerth ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/pokerth_server ${PREFIX}/bin

.include <bsd.port.mk>
