# $OpenBSD: Makefile,v 1.14 2000/12/12 23:46:14 markus Exp $

PKGNAME=	9wm-1.2pre
DISTNAME=	pre-9wm-1.2
CATEGORIES=	plan9
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.cs.su.oz.au/dhog/9wm/
EXTRACT_SUFX=	.shar.gz

EXTRACT_CMD=	gzcat
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | ${SH}

MAINTAINER=	Markus Friedl <markus@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= imake

WRKDIST=	${WRKDIR}

.include <bsd.port.mk>
