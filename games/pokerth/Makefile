# $OpenBSD: Makefile,v 1.14 2010/10/26 09:41:51 jasper Exp $

COMMENT=	Qt4 poker game with online capabilities

V=		0.8
DISTNAME=	PokerTH-${V}-src
PKGNAME=	pokerth-${V}
CATEGORIES=	games x11

HOMEPAGE=	http://www.pokerth.net/

MAINTAINER=	Mikko Tolmunen <oskari@sefirosu.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pokerth/}

EXTRACT_SUFX=	.tar.bz2

WANTLIB+=	c crypto m pthread ssl stdc++
WANTLIB+=	boost_filesystem-mt boost_iostreams-mt boost_program_options-mt
WANTLIB+=	boost_regex-mt boost_system-mt boost_thread-mt QtGui
WANTLIB+=	QtNetwork QtSql SDL SDL_mixer curl gsasl

MODULES=	devel/gettext \
		x11/qt4

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	::devel/sdl-mixer \
		::devel/boost \
		::net/curl \
		::security/libgsasl

CONFIGURE_ENV=	HOME=${WRKDIR}

MAKE_FLAGS=	QMAKE_CXX=${CXX} \
		QMAKE_CXXFLAGS_RELEASE="${CXXFLAGS}" \
		HOME=${WRKDIR} \
		PREFIX=${PREFIX}

FAKE_FLAGS=	INSTALL_ROOT=${DESTDIR}

SEPARATE_BUILD=	concurrent

VMEM_WARNING=	Yes
NO_REGRESS=	Yes
USE_GMAKE=	Yes

do-configure:
	cd ${WRKBUILD} && \
		env -i ${CONFIGURE_ENV} qmake4 ${MAKE_FLAGS} \
		${WRKSRC}/pokerth.pro

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/pokerth ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/pokerth_server ${PREFIX}/bin

.include <bsd.port.mk>
