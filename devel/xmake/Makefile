# $OpenBSD: Makefile,v 1.5 2000/02/12 08:41:08 turan Exp $

DISTNAME=	xmake-1.01
CATEGORIES=	devel

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=	http://www.backplane.com/xmake/ \
		ftp://atari.saturn5.com/pub/dlowe/
EXTRACT_SUFX=	.tgz
NEED_VERSION=	1.191

WRKDIST=	${WRKDIR}/xmake

pre-build:
	@${RM} -rf ${WRKSRC}/obj

.include <bsd.port.mk>
