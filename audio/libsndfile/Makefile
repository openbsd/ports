# $OpenBSD: Makefile,v 1.7 2005/10/18 23:24:25 naddy Exp $

COMMENT=	"library to handle various audio file formats"

DISTNAME=	libsndfile-1.0.11
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio
HOMEPAGE=	http://www.mega-nerd.com/libsndfile/

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
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST} \
		htmldocdir=${PREFIX}/share/doc/libsndfile

.include <bsd.port.mk>
