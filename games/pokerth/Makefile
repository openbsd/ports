# $OpenBSD: Makefile,v 1.27 2014/07/09 09:40:49 ajacoutot Exp $

COMMENT=	texas hold'em poker game with online capabilities
BROKEN-hppa =	needs atomic ops
BROKEN-mips64 =	needs atomic ops

V=		1.1.1
DISTNAME=	PokerTH-${V}-src
EXTRACT_SUFX=	.tar.bz2
PKGNAME=	pokerth-${V}

CATEGORIES=	games x11

HOMEPAGE=	http://www.pokerth.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread stdc++
WANTLIB += ICE lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSql SDL SDL_mixer SM
WANTLIB += X11 Xext Xi Xinerama Xrender boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_program_options-mt boost_random-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt crypto curl fontconfig
WANTLIB += freetype gsasl ircclient protobuf sqlite3 ssl tinyxml

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pokerth/}

MODULES=	converters/libiconv \
		x11/qt4

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/sdl-mixer \
		devel/boost \
		devel/protobuf \
		net/curl \
		net/libircclient \
		security/libgsasl \
		textproc/tinyxml

CONFIGURE_ENV=	HOME=${WRKDIR}

MAKE_FLAGS=	QMAKE_CXX=${CXX} \
		QMAKE_CXXFLAGS_RELEASE="${CXXFLAGS}" \
		HOME=${WRKDIR} \
		PREFIX=${PREFIX}

FAKE_FLAGS=	INSTALL_ROOT=${DESTDIR}

SEPARATE_BUILD=	Yes

NO_TEST=	Yes
USE_GMAKE=	Yes

do-configure:
	cd ${WRKSRC} && \
		perl -pi -e 's,-std=gnu\+\+0x,,g' *.pro
	cd ${WRKBUILD} && \
		env -i ${CONFIGURE_ENV} qmake4 ${MAKE_FLAGS} \
		${WRKSRC}/pokerth.pro

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/pokerth ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/pokerth_server ${PREFIX}/bin

.include <bsd.port.mk>
