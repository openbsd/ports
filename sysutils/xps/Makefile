# $OpenBSD: Makefile,v 1.7 2002/10/28 19:53:44 naddy Exp $

DISTNAME=       xps-3.21
CATEGORIES=     sysutils x11

MASTER_SITES=   ftp://netwinder.org/users/r/rocky/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

COMMENT=	"graphically display and update dynamically the process tree"

HOMEPAGE=       http://www.netwinder.org/~rocky/xps-home/

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--x-includes=${LOCALBASE}/include \
			--with-motif-libs=${LOCALBASE}/lib

USE_X11=		Yes
USE_MOTIF=		any

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xps ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/docs/xps.man ${PREFIX}/man/man1/xps.1
	${INSTALL_DATA} ${WRKBUILD}/Xps \
		${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>
