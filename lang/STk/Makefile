# OpenBSD makefile for:	STk
# Version required:	3.1
# Date created:		3 Febuary 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.2 1998/04/13 03:35:20 marc Exp $
#

DISTNAME=       STk-3.1
CATEGORIES=	lang
NO_CDROM=	"NOFEE:	Can not sell"
MASTER_SITES=	ftp://kaolin.unice.fr/pub/

MAINTAINER=	don@openBSD.ORG

PATCH_STRIP=      -p1
GNU_CONFIGURE=	yes
MAKE_FLAGS=  	"prefix=${PREFIX}" -f

post-install:
	@(cd ${WRKSRC}; ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} install.man)

.include <bsd.port.mk>
