# $OpenBSD: Makefile,v 1.3 2011/05/25 20:27:02 robert Exp $

COMMENT=	flock(2) manager for shell scripts
PKGNAME=	flock-20110525
CATEGORIES=	sysutils

DISTFILES=	flock.c
DIST_SUBDIR=	flock

REVISION=	0

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
	@cp ${DISTDIR}/flock.c ${WRKSRC}

do-build:
	cd ${WRKSRC} && \
	       	${CC} ${CFLAGS} -o flock flock.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/flock \
		${PREFIX}/bin

.include <bsd.port.mk>
