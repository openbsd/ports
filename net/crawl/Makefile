# $OpenBSD: Makefile,v 1.8 2002/06/23 18:23:03 brad Exp $

COMMENT=		"small and efficient HTTP crawler"

DISTNAME=		crawl-0.3
CATEGORIES=		net
NEED_VERSION=		1.504

HOMEPAGE=		http://www.monkey.org/~provos/crawl/

MAINTAINER=		Mark Grimes <mark@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.monkey.org/~provos/

LIB_DEPENDS=		db::databases/db

DESTDIRNAME=		install_prefix

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-db="${LOCALBASE}"

WRKDIST=		${WRKDIR}/crawl

.include <bsd.port.mk>
