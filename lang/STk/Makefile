# OpenBSD makefile for:	STk
# Version required:	3.1
# Date created:		3 Febuary 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/02/05 17:17:21 don Exp $
#

DISTNAME=       STk-3.1
CATEGORIES=	lang
MASTER_SITES=	ftp://kaolin.unice.fr/pub/

MAINTAINER=	don@openBSD.ORG

PATCH_STRIP=      -p1
GNU_CONFIGURE=	yes
MAKE_FLAGS=  	"prefix=${PREFIX}" -f

post-install:
	@(cd ${WRKSRC}; ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} install.man)

.include <bsd.port.mk>
