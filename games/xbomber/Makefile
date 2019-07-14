# $OpenBSD: Makefile,v 1.11 2019/07/14 02:16:52 naddy Exp $

COMMENT=		colorful game where you blow other people/robots up

VERSION=		0.8
DISTNAME=		xbomber.${VERSION}
PKGNAME=		xbomber-${VERSION}
REVISION=		2
CATEGORIES=		games x11

HOMEPAGE=		http://www.newbreedsoftware.com/xbomber/

PERMIT_PACKAGE=		No
PERMIT_DISTFILES=	No
WANTLIB=		X11 c m xcb

MASTER_SITES=		ftp://ftp.tuxpaint.org/unix/x/xbomber/

NO_TEST=		Yes
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
