# $OpenBSD: Makefile,v 1.3 2003/02/03 18:17:54 naddy Exp $

COMMENT=	"library to handle various audio file formats"

DISTNAME=	libsndfile-1.0.4
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
