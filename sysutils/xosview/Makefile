# $OpenBSD: Makefile,v 1.15 2000/05/18 03:37:49 form Exp $
# $NetBSD: Makefile,v 1.9 1998/04/15 10:38:50 agc Exp $

DISTNAME=	xosview-1.7.3
CATEGORIES=	sysutils
NEED_VERSION=	1.195
FAKE=		Yes
MASTER_SITES=	http://lore.ece.utexas.edu/~bgrayson/xosview/

MAINTAINER=	form@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ENV+= CPPFLAGS="-I${X11BASE}/include" LDFLAGS="-L${X11BASE}/lib"

MAKE_ENV+=	UVM=${UVM}
MAKE_FLAGS=	ARCH=${ARCH}

.if (${MACHINE_ARCH} == "alpha")
BROKEN=		"compilation errors"
.endif

BINGRP=		kmem
BINMODE=	2555

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xosview ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/xosview.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKBUILD}/Xdefaults \
		${PREFIX}/lib/X11/app-defaults/XOsview

.include <bsd.port.mk>
