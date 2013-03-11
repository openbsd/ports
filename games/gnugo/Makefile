# $OpenBSD: Makefile,v 1.27 2013/03/11 11:07:39 espie Exp $

COMMENT =	GNU version of Go

DISTNAME =	gnugo-3.8
CATEGORIES =	games

HOMEPAGE =	http://www.gnu.org/software/gnugo/

PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m ncurses

MASTER_SITES =	${MASTER_SITE_GNU:=gnugo/}

CONFIGURE_STYLE = gnu
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gnugo
	${INSTALL_DATA} ${WRKSRC}/interface/gnugo.el \
		${PREFIX}/share/gnugo

do-test:
	cd ${WRKSRC}/regression && ${MAKE} all_batches

.include <bsd.port.mk>
