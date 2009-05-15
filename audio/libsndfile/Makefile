# $OpenBSD: Makefile,v 1.15 2009/05/15 18:19:30 naddy Exp $

COMMENT=	library to handle various audio file formats

DISTNAME=	libsndfile-1.0.20
CATEGORIES=	audio
HOMEPAGE=	http://www.mega-nerd.com/libsndfile/
SHARED_LIBS +=	sndfile              3.1      # .1.20

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPLv2.1 or v3.
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
		--disable-external-libs \
		--disable-sqlite

FAKE_FLAGS=	htmldocdir=${PREFIX}/share/doc/libsndfile

.include <bsd.port.mk>
