# OpenBSD makefile for:	ytalk
# Version required:	3.0pl2
# Date created:		17 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.2 1997/11/17 21:47:39 joey Exp $
#

DISTNAME=	ytalk-v3pl2
PKGNAME=	ytalk-3.0.2
CATEGORIES=	net
MASTER_SITES=	ftp://knot.queensu.ca/pub/unix/software/

MAINTAINER=	joey@OpenBSD.ORG

WRKSRC=		${WRKDIR}/ytalk-3.2
USE_IMAKE=	yes
# otherwise pkg_create will think it went to /usr/X11R6
PREFIX=		${LOCALBASE}

.include <bsd.port.mk>
