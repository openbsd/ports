# OpenBSD makefile for:	STk
# Version required:	3.1
# Date created:		3 Febuary 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.3 1999/10/29 10:31:02 turan Exp $
#

BROKEN=		bad packing lists

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
