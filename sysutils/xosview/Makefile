# $OpenBSD: Makefile,v 1.10 1999/12/04 17:30:35 form Exp $
# $NetBSD: Makefile,v 1.9 1998/04/15 10:38:50 agc Exp $

DISTNAME=	xosview-1.7.3
CATEGORIES=	sysutils
MASTER_SITES=	http://lore.ece.utexas.edu/~bgrayson/xosview/

MAINTAINER=	form@openbsd.org

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV+= CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

MAKE_ENV+=	UVM=${UVM}
MAKE_FLAGS=	ARCH=${ARCH} -f

.if (${MACHINE_ARCH} == "alpha")
BROKEN=		"compilation errors"
.endif

.include <bsd.port.mk>
