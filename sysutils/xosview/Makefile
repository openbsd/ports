# $OpenBSD: Makefile,v 1.26 2002/05/13 02:56:50 form Exp $
# $NetBSD: Makefile,v 1.9 1998/04/15 10:38:50 agc Exp $

COMMENT=	"graphical performance meter"

DISTNAME=	xosview-1.8.0
CATEGORIES=	sysutils
NEED_VERSION=	1.528
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xosview/}

HOMEPAGE=	http://xosview.sourceforge.net/

MAINTAINER=	Oleg Safiullin <form@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/config
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include" LDFLAGS="-L${X11BASE}/lib" \
		UVM=Yes

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
