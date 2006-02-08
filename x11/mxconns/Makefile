# $OpenBSD: Makefile,v 1.16 2006/02/08 23:39:19 steven Exp $

COMMENT=	"interactive X11 proxy with selective X request replacement"

DISTNAME=	mxconns-3.1.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11 security

MASTER_SITES=	http://c.home.cern.ch/c/cons/www/mxconns/
EXTRACT_SUFX=	.tgz

# Restrictive
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No
WANTLIB=		X11 Xau Xext Xpm Xt c 

USE_X11=	Yes
USE_MOTIF=	any
CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	-optim "${CFLAGS}"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mxconns ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/mxconns.man \
		${PREFIX}/man/man1/mxconns.1

.include <bsd.port.mk>
