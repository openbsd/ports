# $OpenBSD: Makefile,v 1.1.1.1 2011/05/25 17:02:56 robert Exp $

COMMENT=	flock(2) manager for shell scripts
PKGNAME=	flock-20110525
CATEGORIES=	sysutils
DISTNAME=	buildbot-07f9a8b1b75e01250b227d9fcf10da9c35c06402

HOMEPAGE=	http://cgit.freedesktop.org/libreoffice/contrib/buildbot/
MASTER_SITES=	${HOMEPAGE}snapshot/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c

NO_REGRESS=	Yes

do-build:
	cd ${WRKSRC}/flock && \
	       	${CC} ${CFLAGS} -o flock flock.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/flock/flock \
		${PREFIX}/bin

.include <bsd.port.mk>
