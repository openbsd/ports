# $OpenBSD: Makefile,v 1.7 2009/08/10 06:29:52 kili Exp $

COMMENT=		software drum machine
DISTNAME=		hydrogen-0.9.3
PKGNAME=		${DISTNAME}p4
CATEGORIES=		audio
HOMEPAGE=		http://www.hydrogen-music.org/
MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext c m ogg ossaudio pthread stdc++ pthread-stubs \
			xcb

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hydrogen/}

LIB_DEPENDS=		sndfile.>=1::audio/libsndfile \
			FLAC.>=8,FLAC++.>=7::audio/flac \
			jack::audio/jack

USE_X11=		Yes
MODULES=		x11/qt3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-lrdf-support
CONFIGURE_ENV=		QTDIR="${MODQT_LIBDIR}" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

.include <bsd.port.mk>
