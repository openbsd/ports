# $OpenBSD: Makefile,v 1.8 2000/03/19 18:14:17 espie Exp $

DISTNAME=	xneko
PKGNAME=	xneko-4.4
CATEGORIES=	x11 games
MASTER_SITES= ftp://ftp.freesoftware.com/pub/4.4BSD-Lite/4.4BSD-Lite/usr/src/games/
EXTRACT_SUFX=	.tar
IGNOREFILES=	${DISTNAME}${EXTRACT_SUFX}

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

FAKE=			Yes
FAKE_FLAGS=	MANDIR=${PREFIX}/man/cat BINDIR=${PREFIX}/bin DESTDIR=${WRKINST}

post-extract:
	@rm -f ${WRKSRC}/obj

.include <bsd.port.mk>
