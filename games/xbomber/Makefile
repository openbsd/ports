# $OpenBSD: Makefile,v 1.5 2009/08/10 06:31:43 kili Exp $

COMMENT=		colorful game where you blow other people/robots up

VERSION=		0.8
DISTNAME=		xbomber.${VERSION}
PKGNAME=		xbomber-${VERSION}p1
CATEGORIES=		games x11

HOMEPAGE=		http://www.newbreedsoftware.com/xbomber/

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No
WANTLIB=		X11 c m pthread-stubs xcb

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
