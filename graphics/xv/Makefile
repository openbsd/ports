# $OpenBSD: Makefile,v 1.17 2000/08/05 00:34:49 rohee Exp $
# Original from: Marco S Hyman <marc@OpenBSD.ORG>

DISTNAME=	xv-3.10a
CATEGORIES=	graphics x11
NEED_VERSION=	1.301
MASTER_SITES=	ftp://ftp.cis.upenn.edu/pub/xv/
MASTER_SITES0=	ftp://swrinde.nde.swri.edu/pub/png/applications/
MASTER_SITES1=	http://ftp.trilon.com/pub/xv/patches/
DISTFILES=	${DISTNAME}.tar.gz xv-3.10a-png-1.2d.tar.gz:0
DIST_SUBDIR=	xv

# Various patches from the XV author's site
#
# (xpm.patch is integrated in xvpng.diff that is in xv-3.10a-png-1.2d.tar.gz)
# longname.patch is integrated in patches/patch-aj
PATCHFILES=     xv-3.10a.JPEG-patch xv-3.10a.TIFF-patch bmp32.patch:1 \
		deepcolor.patch:1 exceed_grab.patch:1 gifpatch:1 grabpatch:1 \
		gssafer.patch:1 mp-tiff-patch:1 pdf.patch:1 tiff1200.patch:1 \
		vispatch:1 xvpng-fix2.patch:1

HOMEPAGE=	http://www.trilon.com/xv/index.html

LIB_DEPENDS=    jpeg.62.::graphics/jpeg \
		tiff.35.::graphics/tiff \
		png.1.::graphics/png

MAINTAINER=	rohee@openbsd.org

PERMIT_PACKAGE_CDROM=	"Must buy license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"Must buy license"
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= imake

pre-patch:
	@${PATCH} ${PATCH_ARGS} -p1 < ${WRKDIR}/xcmap.diff
	@${PATCH} ${PATCH_ARGS} -p1 < ${WRKDIR}/xvpng.diff
	@mv ${WRKDIR}/xvpng.c ${WRKSRC}
	@mv ${WRKDIR}/bits/br_png ${WRKSRC}/bits

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xv
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xv
	${INSTALL_DATA} ${WRKSRC}/docs/xvdocs.ps ${PREFIX}/share/doc/xv

.include <bsd.port.mk>
