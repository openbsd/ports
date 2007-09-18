# $OpenBSD: Makefile,v 1.5 2007/09/18 18:30:35 mgrimm Exp $

COMMENT=		software drum machine
DISTNAME=		hydrogen-0.9.3
PKGNAME=		${DISTNAME}p2
CATEGORIES=		audio
HOMEPAGE=		http://www.hydrogen-music.org/
MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m ogg ossaudio pthread stdc++ X11 Xext

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hydrogen/}

LIB_DEPENDS=		sndfile.>=1::audio/libsndfile \
			FLAC.>=8,FLAC++.>=7::audio/flac

USE_X11=		Yes
MODULES=		x11/qt3

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		QTDIR="${MODQT_LIBDIR}" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

.include <bsd.port.mk>
