# $OpenBSD: Makefile,v 1.4 2000/03/23 20:14:20 turan Exp $
# $FreeBSD: Makefile,v 1.9 1999/08/31 06:52:30 mharo Exp $

PKGNAME=	dclock-pl4

CATEGORIES=	x11

DISTNAME=	dclock
EXTRACT_SUFX=	.shar.Z
NEED_VERSION=	1.191

MASTER_SITES=	ftp://ftp.x.org/R5contrib/

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	yes

EXTRACT_CMD=		${GZIP_CMD}
EXTRACT_BEFORE_ARGS=	-cd
EXTRACT_AFTER_ARGS=	|sh -

NO_CONFIGURE=	yes

WRKDIST=	${WRKDIR}

ALL_TARGET=	dclock

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dclock ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dclock.man ${PREFIX}/man/man1/dclock.1

.include <bsd.port.mk>
