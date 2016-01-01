# $OpenBSD: Makefile,v 1.6 2016/01/01 21:01:38 jasper Exp $

COMMENT=	flock(2) manager for shell scripts

V=		20110525

DISTNAME=	flock-${V}
CATEGORIES=	sysutils

DISTFILES=	flock-${V}.c
DIST_SUBDIR=	flock

REVISION=	1

MASTER_SITES=	http://blade2k.humppa.hu/distfiles/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

NO_TEST=	Yes

do-extract:
	@cp ${FULLDISTDIR}/flock-${V}.c ${WRKSRC}

do-build:
	cd ${WRKSRC} && \
	       	${CC} ${CFLAGS} -o flock flock-${V}.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/flock \
		${PREFIX}/bin

.include <bsd.port.mk>
