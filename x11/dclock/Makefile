# $OpenBSD: Makefile,v 1.24 2017/05/08 18:46:38 schwarze Exp $

COMMENT=	digital clock with optional military time and alarm

PKGNAME=	dclock-0
REVISION=	5
CATEGORIES=	x11
DISTNAME=	dclock
EXTRACT_SUFX=	.shar.Z

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license
WANTLIB=		X11 Xt c

WRKDIST=	${WRKDIR}

ALL_TARGET=	dclock

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dclock ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dclock.man ${PREFIX}/man/man1/dclock.1

.include <bsd.port.mk>
