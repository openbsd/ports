# $OpenBSD: Makefile,v 1.40 2011/08/30 06:48:49 ajacoutot Exp $

COMMENT=	powerful Gtk+2 newsreader

V=		0.135
DISTNAME=	pan-${V}
CATEGORIES=	news x11

HOMEPAGE=	http://pan.rebelbase.com/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmime-2.6
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 gtkspell
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs stdc++ xcb xcb-render xcb-shm
WANTLIB += z

MASTER_SITES=	http://pan.rebelbase.com/download/releases/${V}/source/

MODULES=	devel/gettext \
		textproc/intltool # regress target

LIB_DEPENDS=	x11/gtk+2 \
		mail/gmime>=2.6.0 \
		textproc/gtkspell
RUN_DEPENDS=	devel/desktop-file-utils

VMEM_WARNING=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-configure:
	cd ${WRKSRC}/po && for i in $$(ls *.po) ; do ${LOCALBASE}/bin/msgfmt -c -o $${i%%po}gmo $$i ; done

.include <bsd.port.mk>
