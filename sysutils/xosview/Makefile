# $OpenBSD: Makefile,v 1.5 1999/04/09 04:11:57 brad Exp $
# $NetBSD: Makefile,v 1.9 1998/04/15 10:38:50 agc Exp $

DISTNAME=       xosview-1.6.2.a
CATEGORIES=	sysutils
MASTER_SITES=   http://www.ece.utexas.edu/~bgrayson/xosview/

MAINTAINER=	ports@openbsd.org

GNU_CONFIGURE=	yes
USE_X11=	yes

MAKE_ENV+=	UVM=${UVM}
MAKE_FLAGS=	ARCH=${ARCH} -f

.if (${MACHINE_ARCH} == "alpha")
BROKEN=		"compilation errors"
.endif

.include <bsd.port.mk>
