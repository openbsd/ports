# $OpenBSD: Makefile,v 1.17 2013/03/11 11:07:39 espie Exp $

COMMENT=	Curses-based interpreter for Infocom-compatible games

DISTNAME=		frotz-2.43
REVISION =		2
CATEGORIES=     	games

HOMEPAGE=		http://frotz.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c curses

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=frotz/}

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}" CONFIG_DIR="${SYSCONFDIR}"

ALL_TARGET=		frotz

CFLAGS+=		-DUSE_UNISTD_H -DCOLOR_SUPPORT -DEMACS_EDITING

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/frotz ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/doc/frotz.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
