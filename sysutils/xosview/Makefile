# OpenBSD makefile for:	xosview
# Version required:	1.5.1
# Date created:		7 May 1998
# Whom:			form
#
# $OpenBSD: Makefile,v 1.4 1998/11/24 02:54:28 form Exp $
# NetBSD: Makefile,v 1.9 1998/04/15 10:38:50 agc Exp
#

DISTNAME=       xosview-1.6.2.a
CATEGORIES=	sysutils
MASTER_SITES=   http://www.ece.utexas.edu/~bgrayson/xosview/

MAINTAINER=	form@OpenBSD.ORG

GNU_CONFIGURE=	yes
USE_X11=	yes
MAN1=		xosview.1

MAKE_ENV+=	UVM=${UVM}
MAKE_FLAGS=	ARCH=${ARCH} -f

.if (${MACHINE_ARCH} == "alpha")
BROKEN=		"compilation errors"
.endif

.include <bsd.port.mk>
