# $OpenBSD: Makefile,v 1.12 2000/12/14 13:23:01 espie Exp $

DISTNAME=	9menu-1.5
CATEGORIES=	plan9
NEED_VERSION=	1.342
MASTER_SITES=	ftp://ftp.mathcs.emory.edu/pub/arnold/

EXTRACT_SUFX=	.shar.gz

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -I/usr/X11R6/include" \
		LIBS="-L/usr/X11R6/lib -lX11"

ALL_TARGET=	9menu

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/9menu ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/9menu.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
