# $OpenBSD: Makefile,v 1.1.1.1 2002/11/03 17:10:08 naddy Exp $

COMMENT=	"library to handle various audio file formats"

DISTNAME=	libsndfile-1.0.1
CATEGORIES=	audio
HOMEPAGE=	http://www.zip.com.au/~erikd/libsndfile/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
