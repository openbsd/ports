# $OpenBSD: Makefile,v 1.17 2001/03/25 08:33:13 jakob Exp $

COMMENT=	CAD drawing program for X11

VERSION=	3.2.3c
DISTNAME=	xfig.${VERSION}.full
PKGNAME=	xfig-${VERSION}
CATEGORIES=	graphics x11
NEED_VERSION=	1.363

MASTER_SITES=	http://www.xfig.org/xfigdist/ \
		ftp://www-epb.lbl.gov/xfig/ \
		ftp://www-epb.lbl.gov/xfig/previous_versions/
MASTER_SITE_SUBDIR= applications/drawing_tools/xfig

HOMEPAGE=	http://www.xfig.org/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		Xaw3d.6.1::x11/Xaw3d
RUN_DEPENDS=	fig2dev::print/transfig \
		gv::print/gv

WRKDIST=	${WRKDIR}/xfig.${VERSION}

CONFIGURE_STYLE=	imake
MAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man1 \
		XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults  \
		XFIGLIBDIR=${PREFIX}/lib/X11/xfig 

post-patch:
	perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g' ${WRKSRC}/Imakefile

.include <bsd.port.mk>
