COMMENT =	GNU version of Go

DISTNAME =	gnugo-3.8
REVISION =	3
CATEGORIES =	games

HOMEPAGE =	https://www.gnu.org/software/gnugo/

PERMIT_PACKAGE =	Yes

WANTLIB =	c m curses

MASTER_SITES =	${MASTER_SITE_GNU:=gnugo/}

CONFIGURE_STYLE = gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gnugo
	${INSTALL_DATA} ${WRKSRC}/interface/gnugo.el \
		${PREFIX}/share/gnugo

do-test:
	cd ${WRKSRC}/regression && ${MAKE} all_batches

.include <bsd.port.mk>
