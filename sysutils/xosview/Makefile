# $OpenBSD: Makefile,v 1.12 2000/03/23 05:40:41 turan Exp $
# $NetBSD: Makefile,v 1.9 1998/04/15 10:38:50 agc Exp $

DISTNAME=	xosview-1.7.3
CATEGORIES=	sysutils
MASTER_SITES=	http://lore.ece.utexas.edu/~bgrayson/xosview/
NEED_VERSION=	1.195

MAINTAINER=	form@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV+= CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

MAKE_ENV+=	UVM=${UVM}
MAKE_FLAGS=	ARCH=${ARCH}

.if (${MACHINE_ARCH} == "alpha")
BROKEN=		"compilation errors"
.endif

.include <bsd.port.mk>
