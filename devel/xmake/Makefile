# $OpenBSD: Makefile,v 1.8 2000/03/24 22:11:40 espie Exp $

DISTNAME=	xmake-1.01
CATEGORIES=	devel
NEED_VERSION=	1.191

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	http://www.backplane.com/xmake/ \
		ftp://atari.saturn5.com/pub/dlowe/
EXTRACT_SUFX=	.tgz

WRKDIST=	${WRKDIR}/xmake

pre-build:
	@rm -rf ${WRKSRC}/obj

.include <bsd.port.mk>
