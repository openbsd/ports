# $OpenBSD: Makefile,v 1.25 2002/10/27 00:03:17 naddy Exp $

COMMENT=	"CAD drawing program for X11"

VERSION=	3.2.3d
DISTNAME=	xfig.${VERSION}.full
PKGNAME=	xfig-${VERSION}
CATEGORIES=	graphics x11

HOMEPAGE=	http://www.xfig.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.xfig.org/xfigdist/ \
		ftp://www-epb.lbl.gov/xfig/ \
		ftp://www-epb.lbl.gov/xfig/previous_versions/

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.2::graphics/png \
		Xaw3d.6.1::x11/Xaw3d
RUN_DEPENDS=	::print/transfig \
		::print/gv

MAKE_FLAGS=	XAPPLOADDIR="${PREFIX}/lib/X11/app-defaults" \
		XFIGLIBDIR="${PREFIX}/lib/X11/xfig" \
		LOCALBASE="${LOCALBASE}" X11BASE="${X11BASE}"
FAKE_FLAGS+=	${MAKE_FLAGS} DESTDIR="${WRKINST}"

CONFIGURE_STYLE= imake

INSTALL_TARGET=	install install.all

WRKDIST=	${WRKDIR}/xfig.${VERSION}

NO_REGRESS=	Yes

.include <bsd.port.mk>
