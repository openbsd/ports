# $OpenBSD: Makefile,v 1.2 2007/03/22 16:23:28 jasper Exp $

COMMENT=		"colorful game where you blow other people/robots up"

VERSION=		0.8
DISTNAME=		xbomber.${VERSION}
PKGNAME=		xbomber-${VERSION}
CATEGORIES=		games x11

HOMEPAGE=		http://www.newbreedsoftware.com/xbomber/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB= X11 c m

MASTER_SITES=		ftp://ftp.billsgames.com/unix/x/xbomber/

USE_X11=		Yes
NO_REGRESS=		Yes
WRKDIST=		${WRKDIR}/xbomber
MAKE_FILE=		makefile

post-extract:
	@rm ${WRKSRC}/xbomber

post-patch:
	@perl -pi -e 's,!!CFLAGS!!,${CFLAGS},' ${WRKSRC}/${MAKE_FILE}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xbomber ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/xbomber
	cd ${WRKSRC}; tar cf - bitmaps pixmaps levels sounds jungle | \
		tar xf - -C ${PREFIX}/share/xbomber	
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xbomber
	${INSTALL_DATA} ${WRKSRC}/*.txt ${PREFIX}/share/doc/xbomber

.include <bsd.port.mk>
