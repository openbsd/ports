# $OpenBSD: Makefile,v 1.6 2008/11/07 12:20:14 ajacoutot Exp $

COMMENT=	Qt4 poker game with online capabilities

V=		0.6.2
DISTNAME=	PokerTH-${V}-src
PKGNAME=	pokerth-${V}p2
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

WANTLIB=	ICE SDL SM X11 Xext Xi Xinerama Xrandr \
		Xrender c crypto fontconfig freetype glib-2.0 \
		gthread-2.0 m png pthread stdc++ z QtGui ssl

MODULES=	devel/gettext \
		x11/qt4

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	SDL_mixer::devel/sdl-mixer \
		boost_filesystem-mt.>=1,boost_thread-mt,boost_program_options-mt,boost_iostreams-mt::devel/boost \
		curl::net/curl

CONFIGURE_ENV=	HOME=${WRKDIR}

MAKE_FLAGS=	QMAKE_CXX=${CXX} \
		QMAKE_CXXFLAGS_RELEASE="${CXXFLAGS}" \
		HOME=${WRKDIR} \
		PREFIX=${PREFIX}

FAKE_FLAGS=	INSTALL_ROOT=${DESTDIR}

VMEM_WARNING=	Yes
NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

do-configure:
	cd ${WRKSRC} && \
		env -i ${CONFIGURE_ENV} qmake4 ${MAKE_FLAGS} pokerth.pro

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pokerth ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bin/pokerth_server ${PREFIX}/bin

.include <bsd.port.mk>
