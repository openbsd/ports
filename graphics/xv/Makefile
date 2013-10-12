# $OpenBSD: Makefile,v 1.49 2013/10/12 20:04:32 kili Exp $

COMMENT=	X11 image display and modification tool

DISTNAME=	xv-3.10a
REVISION=	14
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

LIB_DEPENDS=	graphics/jpeg \
		graphics/jasper \
		graphics/tiff \
		graphics/png

WANTLIB= X11 Xau Xdmcp c jasper>=2 jpeg>=62 m png>=5 tiff>=38 z

USE_GROFF =	Yes
MAKE_ENV=	SYSCONFDIR="$(SYSCONFDIR)"

DESTDIRNAME=	none
NO_TEST=	Yes

pre-patch:
	@${PATCH} ${PATCH_DIST_ARGS} -p1 \
		< ${WRKDIR}/xv-3.10a-jumbo-fix-enh-patch-20070520.txt

.include <bsd.port.mk>
