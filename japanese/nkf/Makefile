# $OpenBSD: Makefile,v 1.27 2014/06/14 10:34:45 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	Network Kanji code conversion Filter

VERSION =	2.1.1
DISTNAME =	nkf-${VERSION}
PKGNAME =	ja-nkf-${VERSION}
EPOCH =		0
REVISION =	1
CATEGORIES =	japanese textproc

HOMEPAGE =	http://sourceforge.jp/projects/nkf/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE_JP:=nkf/48945/}

MAINTAINER =	Marc Espie <espie@openbsd.org>

#		BSD
PERMIT_PACKAGE_CDROM =	Yes
WANTLIB =		c

WRKSRC =		${WRKDIST}/NKF.mod
CONFIGURE_STYLE =	perl
USE_GROFF =		Yes

post-build:
	cd ${WRKDIST} && ${CC} -o nkf ${CFLAGS} nkf.c utf8tbl.c

post-install:
	${INSTALL_PROGRAM} ${WRKDIST}/nkf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/nkf.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
