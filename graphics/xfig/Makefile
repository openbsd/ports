# $OpenBSD: Makefile,v 1.13 2000/03/24 23:28:11 espie Exp $

DISTNAME=	xfig.3.2.3a
PKGNAME=	xfig-3.2.3a
CATEGORIES=	graphics x11
NEED_VERSION=	 1.230
MASTER_SITES=	ftp://www-epb.lbl.gov/xfig/
MASTER_SITE_SUBDIR= applications/drawing_tools/xfig

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		Xaw3d.6.1::x11/Xaw3d
RUN_DEPENDS=	fig2dev::print/transfig \
		gv::print/gv

USE_IMAKE=	Yes
MAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man1 \
		XAPPLOADDIR=${PREFIX}/lib/X11/app-defaults  \
		XFIGLIBDIR=${PREFIX}/lib/X11/xfig 
FAKE=		Yes

post-patch:
	perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g' ${WRKSRC}/Imakefile

.include <bsd.port.mk>
