# $OpenBSD: Makefile,v 1.6 2002/06/13 03:58:11 brad Exp $

COMMENT=	"asynchronous event library"

DISTNAME=	libevent-0.5
CATEGORIES=	devel
NEED_VERSION=	1.528
MASTER_SITES=	http://www.monkey.org/~provos/

HOMEPAGE=	http://www.monkey.org/~provos/libevent/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= automake

WRKDIST=	${WRKDIR}/libevent

post-patch:
	cd ${WRKSRC} && automake

do-regress:
	cd ${WRKBUILD}/test && ${MAKE_PROGRAM}

.include <bsd.port.mk>
