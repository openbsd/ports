# $OpenBSD: Makefile,v 1.25 2009/08/10 06:33:44 kili Exp $

COMMENT=	8 1/2-like Window Manager for X11

DISTNAME=	pre-9wm-1.2
PKGNAME=	9wm-1.2prep1
CATEGORIES=	plan9

MASTER_SITES=	http://www.plig.org/xwinman/archive/9wm/
EXTRACT_SUFX=	.shar.gz
EXTRACT_CASES=	*.shar.gz) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | /bin/sh;;

MAINTAINER=	Markus Friedl <markus@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB =	X11 Xau Xdmcp Xext c pthread-stubs xcb

USE_X11=	Yes
CONFIGURE_STYLE=imake

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

.include <bsd.port.mk>
