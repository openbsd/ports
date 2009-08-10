# $OpenBSD: Makefile,v 1.40 2009/08/10 06:31:45 kili Exp $

COMMENT=	CAD drawing program for X11

VERSION=	3.2.5b
DISTNAME=	xfig.${VERSION}.full
PKGNAME=	xfig-${VERSION}p0
CATEGORIES=	graphics x11

HOMEPAGE=	http://www.xfig.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xmu Xp Xpm Xt c m pthread-stubs xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mcj/}

FAKE=		lib
PATCHORIG=	.pat.orig
LIB_DEPENDS=	jpeg.>=62::graphics/jpeg \
		png.>=2::graphics/png \
		Xaw3d.>=6.1::x11/Xaw3d
RUN_DEPENDS=	::print/transfig \
		::textproc/xpdf

MAKE_FLAGS=	XAPPLOADDIR="${PREFIX}/lib/X11/app-defaults" \
		XFIGDOCDIR="${PREFIX}/share/doc/xfig" \
		XFIGLIBDIR="${PREFIX}/lib/X11/xfig"

CONFIGURE_STYLE= imake

INSTALL_TARGET=	install install.all

WRKDIST=	${WRKDIR}/xfig.${VERSION}

NO_REGRESS=	Yes

USE_X11=	Yes

.include <bsd.port.mk>
