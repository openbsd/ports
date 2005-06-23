# $OpenBSD: Makefile,v 1.28 2005/06/23 20:23:05 sturm Exp $
# Original from: Marco S Hyman <marc@OpenBSD.ORG>

COMMENT=	"X11 image display and modification tool"

DISTNAME=	xv-3.10a
PKGNAME=	${DISTNAME}p3
CATEGORIES=	graphics x11

MASTER_SITES=	ftp://ftp.cis.upenn.edu/pub/xv/
MASTER_SITES0=	${MASTER_SITE_SOURCEFORGE:=png-mng/}
DISTFILES=	${DISTNAME}.tar.gz xv-3.10a-jumbo-patches-20050501.tar.bz2:0
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
WANTLIB=		X11 c m z

NO_REGRESS=		Yes

MAKE_FLAGS+=		USERCFLAGS="${CFLAGS}"

pre-patch:
	@${PATCH} ${PATCH_ARGS} -p1 < ${WRKDIR}/xv-3.10a-jumbo-fix-patch-20050410.txt
	@${PATCH} ${PATCH_ARGS} -p1 < ${WRKDIR}/xv-3.10a-jumbo-enh-patch-20050501.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xv
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xv
	${INSTALL_DATA} ${WRKSRC}/docs/xvdocs.ps ${PREFIX}/share/doc/xv

.include <bsd.port.mk>
