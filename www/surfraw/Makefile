# $OpenBSD: Makefile,v 1.28 2013/12/12 14:59:05 benoit Exp $

COMMENT =	command line interface to popular WWW search engines

DISTNAME =	surfraw-2.2.9
CATEGORIES =	www

HOMEPAGE =	http://surfraw.alioth.debian.org/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Public Domain 
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/dist/

CONFIGURE_STYLE = 	gnu
USE_GROFF =		Yes

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

TEST_DEPENDS =	www/p5-libwww \
			www/surfraw
TEST_TARGET =	test

.include <bsd.port.mk>
