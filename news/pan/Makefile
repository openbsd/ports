# $OpenBSD: Makefile,v 1.49 2014/10/01 12:22:17 jasper Exp $

COMMENT=	powerful newsreader

V=		0.139
DISTNAME=	pan-${V}
CATEGORIES=	news x11
REVISION=	3

HOMEPAGE=	http://pan.rebelbase.com/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmime-2.6 gmodule-2.0 gnome-keyring gnutls gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread stdc++ z

MASTER_SITES=	http://pan.rebelbase.com/download/releases/${V}/source/

MODULES=	devel/gettext \
		textproc/intltool # test target

LIB_DEPENDS=	devel/libnotify \
		mail/gmime \
		security/gnutls \
		x11/gnome/libgnome-keyring \
		x11/gtk+3
RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-gtk3 --enable-libnotify --enable-gkr --with-gnutls

# XXX needs to be ported to gtkspell3
CONFIGURE_ARGS += --without-gtkspell

post-configure:
	cd ${WRKSRC}/po && for i in $$(ls *.po) ; do ${LOCALBASE}/bin/msgfmt -c -o $${i%%po}gmo $$i ; done

.include <bsd.port.mk>
