# $OpenBSD: Makefile,v 1.1.1.1 2013/12/11 14:38:44 jca Exp $

COMMENT=		command line image viewer

V=			2.0
DISTNAME=		pqiv-$V
DISTFILES=		${DISTNAME}{$V}.tar.gz

CATEGORIES=		graphics

HOMEPAGE=		https://github.com/phillipberndt/pqiv/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

MASTER_SITES=		https://github.com/phillipberndt/pqiv/archive/

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
