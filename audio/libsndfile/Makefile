# $OpenBSD: Makefile,v 1.5 2004/11/21 17:51:45 espie Exp $

COMMENT=	"library to handle various audio file formats"

DISTNAME=	libsndfile-1.0.7
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

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

# create_symbols_file.sh uses invalid syntax and we don't need this file
pre-build:
	touch ${WRKBUILD}/src/Symbols

.include <bsd.port.mk>
