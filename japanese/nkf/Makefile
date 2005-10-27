# $OpenBSD: Makefile,v 1.16 2005/10/27 10:14:40 espie Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Network Kanji code conversion Filter"

VERSION=	2.05
DISTNAME=	nkf205
PKGNAME=	ja-nkf-${VERSION}
CATEGORIES=	japanese textproc

HOMEPAGE=	http://www01.tcp-ip.or.jp/~furukawa/nkf_utf8/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Marc Espie <espie@openbsd.org>

#		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

WRKSRC=		${WRKDIST}/NKF.mod
CONFIGURE_STYLE=	perl

post-build:
	cd ${WRKDIST} && ${CC} -o nkf ${CFLAGS} nkf.c utf8tbl.c

post-install:
	${INSTALL_PROGRAM} ${WRKDIST}/nkf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/nkf.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
