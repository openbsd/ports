# $OpenBSD: Makefile,v 1.4 2000/02/11 00:37:21 espie Exp $

DISTNAME=	xmake-1.01
CATEGORIES=	devel

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	http://www.backplane.com/xmake/ \
		ftp://atari.saturn5.com/pub/dlowe/
EXTRACT_SUFX=	.tgz
NEED_VERSION=	1.191

WRKDIST=	${WRKDIR}/xmake

pre-build:
	@${RM} -rf ${WRKSRC}/obj

.include <bsd.port.mk>
