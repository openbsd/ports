# $OpenBSD: Makefile,v 1.2 2001/04/07 04:42:21 brad Exp $

COMMENT=	"asynchronous event library"

DISTNAME=	libevent-0.3c
CATEGORIES=	devel
NEED_VERSION=	1.384
MASTER_SITES=	http://www.monkey.org/~provos/

HOMEPAGE=	http://www.monkey.org/~provos/libevent/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf

WRKDIST=	${WRKDIR}/libevent

.include <bsd.port.mk>
