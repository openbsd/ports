# $OpenBSD: Makefile,v 1.5 2000/02/15 05:04:02 turan Exp $

DISTNAME=	xmp3_1.0.0
PKGNAME=	xmpeg3-1.0
CATEGORIES=	audio tk80
MASTER_SITES=	ftp://ftp.funet.fi/pub/sci/audio/mpeg/amp/
NEED_VERSION=	1.191
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

RUN_DEPENDS=	amp:${PORTSDIR}/audio/amp \
		wish8.0:${PORTSDIR}/x11/tk80

WRKDIST=		${WRKDIR}/xmpeg3
NO_BUILD=	yes

post-patch:
	@/usr/bin/perl -pi -e "s|\@\@PREFIX\@\@|${PREFIX}|;" ${WRKSRC}/xmpeg3

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/xmpeg3 ${PREFIX}/bin

.include <bsd.port.mk>
