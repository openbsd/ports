# $OpenBSD: Makefile,v 1.5 2001/03/25 22:35:45 jakob Exp $

COMMENT=	strong hash library

DISTNAME=	mhash-0.8.9
CATEGORIES=	security
NEED_VERSION=	1.363

MASTER_SITES=	http://mhash.sourceforge.net/dl/

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
