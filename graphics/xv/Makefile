# $OpenBSD: Makefile,v 1.27 2005/04/17 13:37:42 espie Exp $
# Original from: Marco S Hyman <marc@OpenBSD.ORG>

COMMENT=	"X11 image display and modification tool"

DISTNAME=	xv-3.10a
PKGNAME=	${DISTNAME}p2
CATEGORIES=	graphics x11

MASTER_SITES=	ftp://ftp.cis.upenn.edu/pub/xv/
MASTER_SITES0=	http://www.sonic.net/~roelofs/code/
DISTFILES=	${DISTNAME}.tar.gz xv-3.10a-jumbo-patches-20050410.tar.gz:0
DIST_SUBDIR=	xv

HOMEPAGE=	http://www.trilon.com/xv/index.html

LIB_DEPENDS=    jpeg.62.::graphics/jpeg \
		tiff.35.::graphics/tiff \
		png.2.::graphics/png

FAKE=		lib
MAINTAINER=	Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	"Must buy license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"Must buy license"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m z

CONFIGURE_STYLE=	imake
NO_REGRESS=		Yes

pre-patch:
	@${PATCH} ${PATCH_ARGS} -p1 < ${WRKDIR}/xv-3.10a-jumbo-fix-patch-20050410.txt
	@${PATCH} ${PATCH_ARGS} -p1 < ${WRKDIR}/xv-3.10a-jumbo-enh-patch-20050410.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xv
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xv
	${INSTALL_DATA} ${WRKSRC}/docs/xvdocs.ps ${PREFIX}/share/doc/xv

.include <bsd.port.mk>
