# OpenBSD Makefile for:	xmpeg3
# Version required:	1.0
# Date created:		May 22, 1999
# Whom:			Angelos D. Keromytis
#
# $Id: Makefile,v 1.1.1.1 1999/05/23 01:52:32 angelos Exp $
# $OpenBSD: Makefile,v 1.1.1.1 1999/05/23 01:52:32 angelos Exp $
#

DISTNAME=	xmp3_1.0.0
PKGNAME=	xmpeg3-1.0
CATEGORIES=	audio tk80
MASTER_SITES=	ftp://ftp.funet.fi/pub/sci/audio/mpeg/amp/
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

RUN_DEPENDS=	amp:${PORTSDIR}/audio/amp \
		wish8.0:${PORTSDIR}/x11/tk80

WRKSRC=		${WRKDIR}/xmpeg3
NO_BUILD=	yes

post-patch:
	@/usr/bin/perl -pi -e "s|\@\@PREFIX\@\@|${PREFIX}|;" ${WRKSRC}/xmpeg3

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/xmpeg3 ${PREFIX}/bin

.include <bsd.port.mk>
