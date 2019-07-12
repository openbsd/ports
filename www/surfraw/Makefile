# $OpenBSD: Makefile,v 1.32 2019/07/12 20:51:06 sthen Exp $

COMMENT =	command line interface to popular WWW search engines

DISTNAME =	surfraw-2.3.0
CATEGORIES =	www
REVISION =	0

HOMEPAGE =	https://gitlab.com/surfraw/Surfraw

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Public Domain 
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}/dist/

CONFIGURE_STYLE = 	gnu

pre-configure:
	@perl -pi -e 's,\.(1sr|1)\.gz,.1,g' ${WRKSRC}/links.IN

post-install:
	${INSTALL_MAN} ${WRKSRC}/elvi.1sr ${PREFIX}/man/man1/elvi.1
	${INSTALL_MAN} ${WRKSRC}/surfraw.1 ${PREFIX}/man/man1/surfraw.1
	${INSTALL_MAN} ${WRKSRC}/surfraw.1 ${PREFIX}/man/man1/sr.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/surfraw
	${INSTALL_DATA} ${WRKSRC}/surfraw.conf ${WRKSRC}/surfraw.bookmarks \
	    ${PREFIX}/share/examples/surfraw
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/surfraw
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/HACKING \
		${PREFIX}/share/doc/surfraw

TEST_DEPENDS =		www/p5-libwww \
			www/p5-LWP-Protocol-https \
			www/surfraw
TEST_TARGET =		test

.include <bsd.port.mk>
