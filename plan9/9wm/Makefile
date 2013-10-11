# $OpenBSD: Makefile,v 1.31 2013/10/11 20:39:42 naddy Exp $

COMMENT=	8 1/2-like Window Manager for X11

DISTNAME=	pre-9wm-1.2
PKGNAME=	9wm-1.2pre
REVISION =	3
CATEGORIES=	plan9

MASTER_SITES=	http://www.plig.org/xwinman/archive/9wm/
EXTRACT_SUFX=	.shar.gz
EXTRACT_CASES=	*.shar.gz) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | /bin/sh;;

MAINTAINER=	Markus Friedl <markus@openbsd.org>

# nonstandard license
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	No
PERMIT_DISTFILES_FTP =	No

WANTLIB =	X11 Xau Xdmcp Xext c pthread-stubs xcb

USE_GROFF =	Yes
CONFIGURE_STYLE=imake

WRKDIST=	${WRKDIR}

NO_TEST=	Yes

.include <bsd.port.mk>
