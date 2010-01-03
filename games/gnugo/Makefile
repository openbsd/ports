# $OpenBSD: Makefile,v 1.25 2010/01/03 23:50:31 fgsch Exp $

COMMENT =	GNU version of Go

DISTNAME =	gnugo-3.8
CATEGORIES =	games

HOMEPAGE =	http://www.gnu.org/software/gnugo/

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m ncurses

MASTER_SITES =	${MASTER_SITE_GNU:=gnugo/}

CONFIGURE_STYLE = gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gnugo
	${INSTALL_DATA} ${WRKSRC}/interface/gnugo.el \
		${PREFIX}/share/gnugo

do-regress:
	cd ${WRKSRC}/regression && ${MAKE} all_batches

.include <bsd.port.mk>
