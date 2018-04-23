# $OpenBSD: Makefile,v 1.17 2018/04/23 12:09:30 danj Exp $

COMMENT=		command line image viewer

GH_ACCOUNT=		phillipberndt
GH_PROJECT=		pqiv
GH_TAGNAME=		2.10.3

CATEGORIES=		graphics

HOMEPAGE=		https://github.com/phillipberndt/pqiv/

MAINTAINER=		Daniel Jakots <obsd@chown.me>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl m pango-1.0 pangocairo-1.0

COMPILER=		base-clang ports-clang ports-gcc

LIB_DEPENDS=		x11/gtk+3

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}" VERBOSE=1

USE_GMAKE=		Yes
NO_TEST=		Yes

MAKE_FILE =		GNUmakefile

ALL_TARGET=		pqiv

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pqiv ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/pqiv.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
