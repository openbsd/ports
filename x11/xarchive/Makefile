# $OpenBSD: Makefile,v 1.17 2015/04/21 18:13:10 sthen Exp $

COMMENT=	GTK+2 front-end for command line archiving tools

V=		0.2.8-6
DISTNAME=	xarchive-$V
PKGNAME=	xarchive-${V:S/-/./}
REVISION=	4
CATEGORIES=	x11

HOMEPAGE=	http://xarchive.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread
WANTLIB += pthread-stubs xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xarchive/}


MODULES=	devel/gettext
LIB_DEPENDS=	x11/gtk+2
RUN_DEPENDS=	devel/desktop-file-utils


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	BASH_PROG=/bin/sh

pre-configure:
	@perl -pi -e 's,AWK_PROGS="mawk gawk awk",AWK_PROGS="awk gawk mawk",g' \
		${WRKSRC}/wrappers/*.src
	${SUBST_CMD} ${WRKSRC}/doc/xarchive.1 \
		${WRKSRC}/doc/xarchive.1.txt.src

.include <bsd.port.mk>
