# Ports collection makefile for:        xps
# Version required:     1.2
# Date created:         28 April 2001
# Whom:                 Angelos D. Keromytis (angelos@openbsd.org)
#
# $OpenBSD: Makefile,v 1.6 2001/10/28 13:05:49 espie Exp $
#

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

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xps ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/docs/xps.man ${PREFIX}/man/man1/xps.1
	${INSTALL_DATA} ${WRKBUILD}/Xps \
		${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>
