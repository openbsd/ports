# $OpenBSD: Makefile,v 1.15 2010/10/26 16:36:59 sthen Exp $

DISTNAME=       xps-4.2
REVISION=	2
CATEGORIES=     sysutils x11

MASTER_SITES=	http://internap.dl.sourceforge.net/sourceforge/motif-pstree/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		ICE SM X11 Xext Xmu Xt c kvm m

COMMENT=	graphically display and update dynamically the process tree

HOMEPAGE=       http://www.netwinder.org/~rocky/xps-home/

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--x-includes=${LOCALBASE}/include \
			--with-motif-libs=${LOCALBASE}/lib
CONFIGURE_ENV=		LDFLAGS=-lm

USE_MOTIF=		any
USE_GROFF=		Yes

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/xps ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/doc/xps.1 ${PREFIX}/man/man1/xps.1
	${INSTALL_DATA} ${WRKBUILD}/src/Xps \
		${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>
