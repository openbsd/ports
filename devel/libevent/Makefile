# $OpenBSD: Makefile,v 1.4 2001/07/20 15:06:04 brad Exp $

COMMENT=	"asynchronous event library"

DISTNAME=	libevent-0.3d
CATEGORIES=	devel
NEED_VERSION=	1.425
MASTER_SITES=	http://www.monkey.org/~provos/

HOMEPAGE=	http://www.monkey.org/~provos/libevent/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DESTDIRNAME=	install_prefix

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/libevent

.include <bsd.port.mk>
