# $OpenBSD: Makefile,v 1.3 1999/04/01 06:20:08 brad Exp $

DISTNAME=	xmake-1.01
CATEGORIES=	devel

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	http://www.backplane.com/xmake/ \
		ftp://atari.saturn5.com/pub/dlowe/
EXTRACT_SUFX=	.tgz

WRKSRC=		${WRKDIR}/xmake

pre-build:
	@${RM} -rf ${WRKSRC}/obj

.include <bsd.port.mk>
