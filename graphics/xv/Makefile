# $OpenBSD: Makefile,v 1.56 2021/05/23 19:28:13 sthen Exp $

COMMENT=	X11 image display and modification tool

DISTNAME=	xv-3.10a
PKGNAME=	${DISTNAME}.20081216
CATEGORIES=	graphics x11

MASTER_SITES=	ftp://ftp.cis.upenn.edu/pub/xv/
MASTER_SITES0=	${MASTER_SITE_SOURCEFORGE:=png-mng/}
MASTER_SITES1=	http://www.gregroelofs.com/code/
DISTFILES=	${DISTNAME}.tar.gz \
		xv-3.10a-jumbo-patches-20070520.tar.gz:0
PATCHFILES=	xv-3.10a-enhancements.20070520-20081216.diff:1
DIST_SUBDIR=	xv

HOMEPAGE=	http://www.trilon.com/xv/index.html

PERMIT_PACKAGE=	Yes

LIB_DEPENDS=	graphics/jpeg \
		graphics/jasper \
		graphics/tiff \
		graphics/png

WANTLIB= X11 Xau Xdmcp c jasper>=2 jpeg>=62 m png>=5 tiff>=38 z

MAKE_ENV=	SYSCONFDIR="$(SYSCONFDIR)"

DESTDIRNAME=	none
NO_TEST=	Yes
DEBUG_PACKAGES= ${BUILD_PACKAGES}

pre-patch:
	@${PATCH} ${PATCH_DIST_ARGS} -p1 \
		< ${WRKDIR}/xv-3.10a-jumbo-fix-enh-patch-20070520.txt

.include <bsd.port.mk>
