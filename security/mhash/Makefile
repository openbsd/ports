# $OpenBSD: Makefile,v 1.4 2001/03/24 19:55:29 jakob Exp $

COMMENT=	strong hash library

DISTNAME=	mhash-0.8.4
CATEGORIES=	security
NEED_VERSION=	1.363

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= mhash

HOMEPAGE=	http://mhash.sourceforge.net/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
