# $OpenBSD: Makefile,v 1.34 2019/07/12 20:47:15 sthen Exp $

COMMENT =	Network Kanji code conversion Filter

VERSION =	2.1.5
DISTNAME =	nkf-${VERSION}
PKGNAME =	ja-nkf-${VERSION}
EPOCH =		0
CATEGORIES =	japanese textproc

HOMEPAGE =	https://nkf.osdn.jp/
MASTER_SITES =	${MASTER_SITE_OSDN_JP:=nkf/70406/}

MAINTAINER =	Marc Espie <espie@openbsd.org>

#		BSD
PERMIT_PACKAGE =	Yes
WANTLIB =		c perl

WRKSRC =		${WRKDIST}/NKF.mod
CONFIGURE_STYLE =	perl

post-build:
	cd ${WRKDIST} && ${CC} -o nkf ${CFLAGS} nkf.c utf8tbl.c

post-install:
	${INSTALL_PROGRAM} ${WRKDIST}/nkf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/nkf.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
