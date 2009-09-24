# $OpenBSD: Makefile,v 1.38 2009/09/24 20:07:18 naddy Exp $

COMMENT=	X11 image display and modification tool

DISTNAME=	xv-3.10a
PKGNAME=	${DISTNAME}p8
CATEGORIES=	graphics x11

MASTER_SITES=	ftp://ftp.mirrorservice.org/sites/ftp.cis.upenn.edu/pub/xv/ \
		ftp://ftp.cise.ufl.edu/pub/depot/archive-pkg/Graphics/ \
		http://gd.tuwien.ac.at/graphics/xv/ \
		ftp://ftp.cis.upenn.edu/pub/xv/
MASTER_SITES0=	${MASTER_SITE_SOURCEFORGE:=png-mng/}
DISTFILES=	${DISTNAME}.tar.gz xv-3.10a-jumbo-patches-20070520.tar.gz:0
DIST_SUBDIR=	xv

HOMEPAGE=	http://www.trilon.com/xv/index.html

PERMIT_PACKAGE_CDROM=	Must buy license
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Must buy license
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	jpeg.>=62.::graphics/jpeg \
		jasper.>=2.::graphics/jasper \
		tiff.>=38.::graphics/tiff \
		png.>=5.::graphics/png

WANTLIB=	X11 Xau Xdmcp c m pthread-stubs xcb z

USE_X11=	Yes
MAKE_ENV=	SYSCONFDIR="$(SYSCONFDIR)"

DESTDIRNAME=	none
NO_REGRESS=	Yes

pre-patch:
	@${PATCH} ${PATCH_DIST_ARGS} -p1 \
		< ${WRKDIR}/xv-3.10a-jumbo-fix-enh-patch-20070520.txt

.include <bsd.port.mk>
