# $OpenBSD: Makefile,v 1.7 2000/02/16 10:52:10 espie Exp $

DISTNAME=	xmake-1.01
CATEGORIES=	devel

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	http://www.backplane.com/xmake/ \
		ftp://atari.saturn5.com/pub/dlowe/
EXTRACT_SUFX=	.tgz
NEED_VERSION=	1.191

WRKDIST=	${WRKDIR}/xmake

pre-build:
	@rm -rf ${WRKSRC}/obj

.include <bsd.port.mk>
