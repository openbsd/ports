# OpenBSD makefile for:	xpm
# Version required:     3.4j
# Date created:		24 November 1997
# Whom:			todd@OpenBSD.org
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/11/25 23:34:54 todd Exp $
#

DISTNAME=       xpm-3.4j
CATEGORIES=	graphics x11
MASTER_SITES=	ftp://avahi.inria.fr/pub/xpm/

USE_IMAKE=	yes

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
