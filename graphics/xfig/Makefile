# $OpenBSD: Makefile,v 1.21 2001/06/20 18:10:31 brad Exp $

COMMENT=	"CAD drawing program for X11"

VERSION=	3.2.3d
DISTNAME=	xfig.${VERSION}.full
PKGNAME=	xfig-${VERSION}
CATEGORIES=	graphics x11
NEED_VERSION=	1.413
MASTER_SITES=	http://www.xfig.org/xfigdist/ \
		ftp://www-epb.lbl.gov/xfig/ \
		ftp://www-epb.lbl.gov/xfig/previous_versions/

HOMEPAGE=	http://www.xfig.org/

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		Xaw3d.6.1::x11/Xaw3d
RUN_DEPENDS=	fig2dev::print/transfig \
		gv::print/gv

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	XAPPLOADDIR="${PREFIX}/lib/X11/app-defaults" \
		XFIGLIBDIR="${PREFIX}/lib/X11/xfig" \
		LOCALBASE="${LOCALBASE}" X11BASE="${X11BASE}"
FAKE_FLAGS+=	${MAKE_FLAGS} DESTDIR="${WRKINST}"

CONFIGURE_STYLE= imake

INSTALL_TARGET=	install install.all

WRKDIST=	${WRKDIR}/xfig.${VERSION}

.include <bsd.port.mk>
