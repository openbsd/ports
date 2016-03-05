# $OpenBSD: Makefile,v 1.52 2016/03/05 17:41:42 sthen Exp $

COMMENT=	CAD drawing program for X11

VERSION=	3.2.5c
DISTNAME=	xfig.${VERSION}.full
PKGNAME=	xfig-${VERSION}
CATEGORIES=	graphics x11

HOMEPAGE=	http://www.xfig.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xaw3d Xmu Xpm Xt c jpeg m png z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mcj/}

PATCHORIG=	.pat.orig
LIB_DEPENDS=	graphics/jpeg \
		graphics/png \
		x11/Xaw3d>=1.6
RUN_DEPENDS=	print/transfig \
		textproc/xpdf

MAKE_FLAGS=	CDEBUGFLAGS="${CFLAGS}" \
		PNGLIBDIR="${LOCALBASE}/lib" \
		PNGINC="-I${LOCALBASE}/include" \
		XPMLIBDIR="${X11BASE}/lib" \
		XPMINC="-I${X11BASE}/include/X11" \
		XAPPLOADDIR="${PREFIX}/lib/X11/app-defaults" \
		XFIGDOCDIR="${PREFIX}/share/doc/xfig" \
		XFIGLIBDIR="${PREFIX}/lib/X11/xfig"

CONFIGURE_STYLE= imake

INSTALL_TARGET=	install install.all

WRKDIST=	${WRKDIR}/xfig.${VERSION}
NO_TEST=	Yes
USE_GROFF=	Yes

post-extract:
	chmod -R u=rwX,go=rX ${WRKSRC}; find ${WRKSRC} -type f -print0 | xargs -0 chmod -x
	find ${WRKSRC}/Doc/html -name '*.orig' -print0 | xargs -0 rm

.include <bsd.port.mk>
