# $OpenBSD: Makefile,v 1.22 2010/10/18 18:13:15 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Network Kanji code conversion Filter

VERSION=	2.05
DISTNAME=	nkf205
PKGNAME=	ja-nkf-${VERSION}
REVISION=	1
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
USE_GROFF =	Yes

post-build:
	cd ${WRKDIST} && ${CC} -o nkf ${CFLAGS} nkf.c utf8tbl.c

post-install:
	${INSTALL_PROGRAM} ${WRKDIST}/nkf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/nkf.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
