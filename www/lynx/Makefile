# New ports collection makefile for:    lynx
# http://sol.slcc.edu/lynx/current/
# Version required:     2.7.1ac
# Date created:         17 November 1997
# Whom:                 gene
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/11/18 02:25:41 gene Exp $
# Id: Makefile,v 1.67 1997/10/10 14:47:21 ache Exp $
#

DISTNAME=       lynx2.7.1ac-0.78
PKGNAME=        lynx-2.7.1ac-0.78
CATEGORIES=	www
MASTER_SITES=   http://sol.slcc.edu/lynx/current/

MAINTAINER=	gene@OpenBSD.ORG

WRKSRC=         ${WRKDIR}/lynx2-7-1
GNU_CONFIGURE=  YES
CONFIGURE_ARGS= --with-screen=ncurses --with-zlib --libdir="${PREFIX}/etc"
MAKEFILE=       makefile
MAN1=		lynx.1

.include <bsd.port.mk>
