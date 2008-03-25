# $OpenBSD: Makefile,v 1.13 2008/03/25 21:24:24 naddy Exp $

COMMENT=	library to handle various audio file formats

DISTNAME=	libsndfile-1.0.17
CATEGORIES=	audio
HOMEPAGE=	http://www.mega-nerd.com/libsndfile/
SHARED_LIBS +=	sndfile              2.0      # .1.17

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c m

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-alsa \
		--disable-flac \
		--disable-sqlite

FAKE_FLAGS=	htmldocdir=${PREFIX}/share/doc/libsndfile

.include <bsd.port.mk>
