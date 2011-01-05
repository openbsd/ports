# $OpenBSD: Makefile,v 1.23 2011/01/05 12:05:10 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Network Kanji code conversion Filter

VERSION=	2.1.1
DISTNAME=	nkf-${VERSION}
PKGNAME=	ja-nkf-${VERSION}
CATEGORIES=	japanese textproc

HOMEPAGE=	http://sourceforge.jp/projects/nkf/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE_JP:=nkf/48945/}

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
