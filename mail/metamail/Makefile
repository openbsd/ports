# OpenBSD makefile for:	metamail
# Version required:	2.7
# Date created:		10 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.3 1998/07/26 06:28:59 marc Exp $
#

DISTNAME=	mm2.7
PKGNAME=	mm-2.7
CATEGORIES=	mail

MAINTAINER=	marc@OpenBSD.ORG

MASTER_SITES=	ftp://thumper.bellcore.com/pub/nsb/
EXTRACT_SUFX=	.tar.Z

WRKSRC=		${WRKDIR}/${DISTNAME}/src

pre-install:
	@(cd ${WRKSRC}/bin && rm -f *.orig)

post-install:
	@test -f /etc/mailcap || \
		${INSTALL_DATA} ${PREFIX}/lib/metamail/mailcap /etc

.include <bsd.port.mk>
