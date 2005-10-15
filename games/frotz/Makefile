# $OpenBSD: Makefile,v 1.9 2005/10/15 00:20:53 jsg Exp $
# $NetBSD: Makefile,v 1.2 2000/01/15 18:46:28 jlam Exp $
# Original from: Stefan Jokisch

COMMENT=	"Curses-based interpreter for Infocom-compatible games"

DISTNAME=		frotz-2.43
CATEGORIES=     	games

HOMEPAGE=		http://www.cs.csubak.edu/~dgriffi/proj/frotz/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses

MASTER_SITES=		http://www.ifarchive.org/if-archive/infocom/interpreters/frotz/

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}" CONFIG_DIR="${SYSCONFDIR}"

ALL_TARGET=		frotz

CFLAGS+=		-DUSE_UNISTD_H -DCOLOR_SUPPORT -DEMACS_EDITING

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/frotz ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/doc/frotz.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
