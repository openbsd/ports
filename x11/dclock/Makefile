# $OpenBSD: Makefile,v 1.8 2000/10/22 14:03:55 espie Exp $
# $FreeBSD: Makefile,v 1.9 1999/08/31 06:52:30 mharo Exp $

PKGNAME=	dclock-pl4

CATEGORIES=	x11
NEED_VERSION=	1.191

DISTNAME=	dclock
EXTRACT_SUFX=	.shar.Z

MASTER_SITES=	ftp://ftp.x.org/R5contrib/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

EXTRACT_CMD=		${GZIP_CMD}
EXTRACT_BEFORE_ARGS=	-cd
EXTRACT_AFTER_ARGS=	|sh -

WRKDIST=	${WRKDIR}

ALL_TARGET=	dclock

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dclock ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dclock.man ${PREFIX}/man/man1/dclock.1

.include <bsd.port.mk>
