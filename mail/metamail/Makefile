# OpenBSD makefile for:	metamail
# Version required:	2.7
# Date created:		10 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.4 1999/04/08 22:41:17 marc Exp $
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
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
