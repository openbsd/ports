# $OpenBSD: Makefile,v 1.43 2012/07/03 09:45:38 pea Exp $

COMMENT=	powerful Gtk+2 newsreader

V=		0.139
DISTNAME=	pan-${V}
CATEGORIES=	news x11

HOMEPAGE=	http://pan.rebelbase.com/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xrender enchant gtkspell-3
WANTLIB += atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmime-2.6
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs stdc++ xcb xcb-render xcb-shm
WANTLIB += z cairo-gobject gdk-3 gtk-3 gnome-keyring notify

MASTER_SITES=	http://pan.rebelbase.com/download/releases/${V}/source/

MODULES=	devel/gettext \
		textproc/intltool # regress target

# GNUTLS is not activated (need >= 3.0.0 )

LIB_DEPENDS=	mail/gmime>=2.6.0 \
		textproc/gtkspell3 \
		textproc/enchant \
		devel/libnotify \
		x11/gnome/libgnome-keyring
RUN_DEPENDS=	devel/desktop-file-utils

VMEM_WARNING=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-gtk3 --with-gtkspell --enable-libnotify --enable-gkr

post-configure:
	cd ${WRKSRC}/po && for i in $$(ls *.po) ; do ${LOCALBASE}/bin/msgfmt -c -o $${i%%po}gmo $$i ; done

.include <bsd.port.mk>
