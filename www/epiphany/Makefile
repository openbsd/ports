# $OpenBSD: Makefile,v 1.2 2005/01/18 08:11:38 wilfried Exp $

COMMENT=	"extremely lightweight and simple web browser for gnome"

V=		1.2.10
DISTNAME=	epiphany-${V}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www

HOMEPAGE=	http://www.gnome.org/projects/epiphany/

MAINTAINER=	Igor Boehm <igor@bytelabs.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/epiphany/1.2/}
EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	:mozilla-devel-*-gtk2:www/mozilla,-devel,gtk2 \
		:pkgconfig-*:devel/pkgconfig \
		:p5-XML-Parser-*:textproc/p5-XML-Parser \
		:scrollkeeper-*:textproc/scrollkeeper
RUN_DEPENDS=	:gnome-desktop-*:x11/gnome/desktop \
		:gnome-themes-*:x11/gnome/themes \
		:hicolor-icon-theme-*:x11/hicolor-icon-theme
LIB_DEPENDS=	gnomeui-2::x11/gnome/libgnomeui \
		mozilla/gtkembedmoz,mozilla/nspr4,mozilla/plc4,mozilla/plds4,mozilla/xpcom:mozilla-*-gtk2:www/mozilla,gtk2

WANTLIB=        ORBit-2 ORBitCosNaming-2 art_lgpl_2 atk-1.0.0.0 \
                audiofile bonobo-2 bonobo-activation bonoboui-2 esd \
                gconf-2 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glade-2.0.0.0 \
                glib-2.0.0.0 gmodule-2.0.0.0 gtk-x11-2.0.0.0 iconv \
                intl jpeg gnome-2 gnome-keyring gnomecanvas-2 \
                gnomevfs-2 gobject-2.0.0.0 gthread-2.0.0.0 pango-1.0.0.0 \
                pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 \
                popt xml2 ICE SM X11 Xcursor Xext Xft Xinerama \
                Xrender c crypto fontconfig freetype m pthread ssl \
                stdc++ z

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/epiphany \
		--disable-schemas-install
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	@rm -f ${PREFIX}/bin/epiphany
	${INSTALL_SCRIPT} ${FILESDIR}/epiphany ${PREFIX}/bin
	@perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g;' ${PREFIX}/bin/epiphany

.include <bsd.port.mk>
