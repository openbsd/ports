# $OpenBSD: Makefile,v 1.2 2001/01/08 12:46:54 naddy Exp $

DISTNAME=	ion-20010106
HOMEPAGE=	http://www.students.tut.fi/~tuomov/ion/

CATEGORIES=	x11
NEED_VERSION=	1.340
MAINTAINER=	Brian Kifiak <bk@rt.fm>

MASTER_SITES=	http://www.students.tut.fi/~tuomov/dl/ \
		ftp://rt.fm/pub/ion/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
USE_X11=	Yes
MAKE_FLAGS=	SYSCONFDIR=${SYSCONFDIR}

.include <bsd.port.mk>
