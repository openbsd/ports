# OpenBSD makefile for:    lynx
# http://sol.slcc.edu/lynx/current/
# Version required:     2.7.1ac
# Date created:         17 November 1997
# Whom:                 gene
#
# $OpenBSD: Makefile,v 1.7 1997/12/29 21:42:43 martin Exp $
#

DISTNAME=       lynx2.7.1ac-0.104
PKGNAME=        lynx-2.7.1ac-0.104
CATEGORIES=	www
MASTER_SITES=   http://sol.slcc.edu/lynx/current/

MAINTAINER=	gene@OpenBSD.ORG

WRKSRC=         ${WRKDIR}/lynx2-7-1
GNU_CONFIGURE=  YES
CONFIGURE_ARGS= --with-screen=ncurses --with-zlib --libdir="${PREFIX}/etc"
MAKEFILE=       makefile
MAN1=		lynx.1

.include <bsd.port.mk>
