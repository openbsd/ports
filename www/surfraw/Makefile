# $OpenBSD: Makefile,v 1.19 2008/01/28 21:55:41 bernd Exp $

COMMENT=	command line interface to popular WWW search engines

DISTNAME=	surfraw-2.2.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www
HOMEPAGE=	http://surfraw.alioth.debian.org/

# Public Domain 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/dist/

CONFIGURE_STYLE= 	gnu
USE_GMAKE=		yes

pre-configure:
	@perl -pi -e 's,\.(1sr|1)\.gz,.1,g' ${WRKSRC}/links.IN

post-install:
	${INSTALL_MAN} ${WRKSRC}/elvi.1sr ${PREFIX}/man/man1/elvi.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/surfraw
	${INSTALL_DATA} ${WRKSRC}/surfraw.conf ${WRKSRC}/surfraw.bookmarks \
	    ${PREFIX}/share/examples/surfraw
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/surfraw
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/HACKING \
		${PREFIX}/share/doc/surfraw

REGRESS_DEPENDS=	::www/p5-libwww \
			::www/surfraw
REGRESS_TARGET=		test

.include <bsd.port.mk>
