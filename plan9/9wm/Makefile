# $OpenBSD: Makefile,v 1.17 2001/08/05 20:50:55 jsyn Exp $

COMMENT=	"8 1/2-like Window Manager for X11"

PKGNAME=	9wm-1.2pre
DISTNAME=	pre-9wm-1.2
CATEGORIES=	plan9
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.cs.su.oz.au/dhog/9wm/
EXTRACT_SUFX=	.shar.gz
EXTRACT_CASES=	*.shar.gz) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | /bin/sh;;

MAINTAINER=	Markus Friedl <markus@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= imake

WRKDIST=	${WRKDIR}

.include <bsd.port.mk>
