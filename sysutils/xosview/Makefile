# OpenBSD makefile for:	xosview
# Version required:	1.5.1
# Date created:		7 May 1998
# Whom:			form
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/07 05:22:37 form Exp $
# NetBSD: Makefile,v 1.9 1998/04/15 10:38:50 agc Exp
#

DISTNAME=       xosview-1.5.1
CATEGORIES=	sysutils
MASTER_SITES=   http://www.ece.utexas.edu/~bgrayson/xosview/

MAINTAINER=	form@vs.itam.nsc.ru

GNU_CONFIGURE=	yes
USE_X11=	yes
MAN1=		xosview.1

MAKE_ENV+=	UVM=${UVM}
MAKE_FLAGS=	ARCH=${ARCH} -f

.include <bsd.port.mk>
