# $OpenBSD: Makefile,v 1.21 2000/10/25 03:55:20 form Exp $
# $NetBSD: Makefile,v 1.9 1998/04/15 10:38:50 agc Exp $

DISTNAME=	xosview-1.7.4
CATEGORIES=	sysutils
NEED_VERSION=	1.305
MASTER_SITES=	ftp://ftp.openbsd.ru/pub/OpenBSD/distfiles/ \
		ftp://vell.nsc.ru/pub/OpenBSD/distfiles/ \
		http://lore.ece.utexas.edu/~bgrayson/xosview/

MAINTAINER=	Oleg Safiullin <form@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV+= CPPFLAGS="-I${X11BASE}/include" LDFLAGS="-L${X11BASE}/lib"

#MAKE_ENV+=	UVM=${UVM}
#MAKE_FLAGS=	ARCH=${ARCH}

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
