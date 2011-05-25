# $OpenBSD: Makefile,v 1.4 2011/05/25 21:21:15 robert Exp $

COMMENT=	flock(2) manager for shell scripts

V=		20110525

PKGNAME=	flock-${V}
CATEGORIES=	sysutils

DISTFILES=	flock-${V}.c
DIST_SUBDIR=	flock

REVISION=	1

MASTER_SITES=	http://blade2k.humppa.hu/distfiles/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c

NO_REGRESS=	Yes

do-extract:
	@cp ${FULLDISTDIR}/flock-${V}.c ${WRKSRC}

do-build:
	cd ${WRKSRC} && \
	       	${CC} ${CFLAGS} -o flock flock-${V}.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/flock \
		${PREFIX}/bin

.include <bsd.port.mk>
