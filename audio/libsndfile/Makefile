# $OpenBSD: Makefile,v 1.6 2005/05/23 23:49:27 naddy Exp $

COMMENT=	"library to handle various audio file formats"

DISTNAME=	libsndfile-1.0.11
CATEGORIES=	audio
HOMEPAGE=	http://www.mega-nerd.com/libsndfile/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST} \
		htmldocdir=${PREFIX}/share/doc/libsndfile

.include <bsd.port.mk>
