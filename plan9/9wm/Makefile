# $OpenBSD: Makefile,v 1.20 2004/12/20 13:45:21 alek Exp $

COMMENT=	"8 1/2-like Window Manager for X11"

PKGNAME=	9wm-1.2pre
DISTNAME=	pre-9wm-1.2
CATEGORIES=	plan9

MASTER_SITES=	ftp://ftp.cs.su.oz.au/dhog/9wm/
EXTRACT_SUFX=	.shar.gz
EXTRACT_CASES=	*.shar.gz) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | /bin/sh;;

MAINTAINER=	Markus Friedl <markus@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c

CONFIGURE_STYLE= imake

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

.include <bsd.port.mk>
