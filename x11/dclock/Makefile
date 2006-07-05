# $OpenBSD: Makefile,v 1.17 2006/07/05 07:24:27 espie Exp $
# $FreeBSD: Makefile,v 1.9 1999/08/31 06:52:30 mharo Exp $

COMMENT=	"digital clock with optional military time and alarm"

PKGNAME=	dclock-0p4
CATEGORIES=	x11
DISTNAME=	dclock
EXTRACT_SUFX=	.shar.Z

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"
WANTLIB=		X11 Xt c

USE_X11=	Yes

WRKDIST=	${WRKDIR}

ALL_TARGET=	dclock

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dclock ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dclock.man ${PREFIX}/man/man1/dclock.1

.include <bsd.port.mk>
