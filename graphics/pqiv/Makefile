# $OpenBSD: Makefile,v 1.2 2014/07/10 11:06:15 rpe Exp $

COMMENT=		command line image viewer

GH_ACCOUNT=		phillipberndt
GH_PROJECT=		pqiv
GH_TAGNAME=		2.0
GH_COMMIT=		eb3aee3d9c99c1aed7a9771406e3e7c63144087c
DISTNAME=		${GH_PROJECT}-${GH_TAGNAME}

CATEGORIES=		graphics

HOMEPAGE=		https://github.com/phillipberndt/pqiv/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

MODULES=		devel/gettext
LIB_DEPENDS=		x11/gtk+3

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

USE_GMAKE=		Yes
USE_GROFF=		Yes
NO_TEST=		Yes

ALL_TARGET=		pqiv

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pqiv ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/pqiv.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
