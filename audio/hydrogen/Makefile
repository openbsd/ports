# $OpenBSD: Makefile,v 1.10 2010/10/23 17:04:14 jakemsr Exp $

COMMENT=		software drum machine
DISTNAME=		hydrogen-0.9.4
REVISION=		0
CATEGORIES=		audio
HOMEPAGE=		http://www.hydrogen-music.org/
MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m ogg pthread sndio stdc++ QtGui QtNetwork QtXml sndfile.>=1
WANTLIB += FLAC.>=8 FLAC++.>=7 jack archive lrdf

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hydrogen/}

LIB_DEPENDS=		::x11/qt4 \
			::audio/libsndfile \
			::audio/flac \
			::audio/jack \
			::archivers/libarchive \
			::textproc/liblrdf

RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils

USE_X11=		Yes
MODULES=		x11/qt4 devel/scons

MAKE_ENV+=		QTDIR="${MODQT4_QTDIR}"
MODSCONS_FLAGS=		localinc="-I${LOCALBASE}/include -I${X11BASE}/include" \
			locallib="-L${LOCALBASE}/lib -L${X11BASE}/lib -logg -pthread" \
			optflags="${CXXFLAGS} " \
			libarchive="1" sndio="1" oss="0" alsa="0" portmidi="0" \
			portaudio="0" lash="0" lrdf="1"

NO_REGRESS=		Yes

post-extract:
	cp ${FILESDIR}/Sndio{Audio,Midi}Driver.h \
		${FILESDIR}/sndio_{audio,midi}_driver.cpp \
		${WRKSRC}/libs/hydrogen/src/IO

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/hydrogen ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKBUILD}/hydrogen.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/data/img/gray/h2-icon.svg \
		${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/share/hydrogen
	${INSTALL_DATA_DIR} ${PREFIX}/share/hydrogen/data
	#mv -f ${WRKSRC}/data/new_tutorial ${WRKDIR}
	cd ${WRKSRC}/data && umask 022 && \
		pax -rw . ${PREFIX}/share/hydrogen/data

.include <bsd.port.mk>
