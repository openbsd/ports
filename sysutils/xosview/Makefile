# OpenBSD makefile for:	xosview
# Version required:	1.5.1
# Date created:		7 May 1998
# Whom:			form
#
# $OpenBSD: Makefile,v 1.2 1998/10/20 08:39:48 form Exp $
# NetBSD: Makefile,v 1.9 1998/04/15 10:38:50 agc Exp
#

DISTNAME=       xosview-1.5.1
CATEGORIES=	sysutils
MASTER_SITES=   http://www.ece.utexas.edu/~bgrayson/xosview/

MAINTAINER=	form@OpenBSD.ORG

GNU_CONFIGURE=	yes
USE_X11=	yes
MAN1=		xosview.1

MAKE_ENV+=	UVM=${UVM}
MAKE_FLAGS=	ARCH=${ARCH} -f

.include <bsd.port.mk>
