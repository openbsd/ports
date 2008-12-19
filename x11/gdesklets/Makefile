# $OpenBSD: Makefile,v 1.6 2008/12/19 10:04:16 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		mini programs for your desktop

DISTNAME=		gDesklets-0.35.4
PKGNAME=		${DISTNAME:L}p4
CATEGORIES=		x11

HOMEPAGE=		http://www.gdesklets.de/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}files/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext lang/python textproc/intltool

WANTLIB=		ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
			Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
			Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 \
			bonobo-activation bonoboui-2 bz2 cairo croco-0.6 \
			crypto dbus-1 dbus-glib-1 esd expat fontconfig \
			freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
			gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
			gnomecanvas-2 gnomevfs-2 gobject-2.0 gsf-1 gthread-2.0 \
			gtk-x11-2.0 jpeg kvm m pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 pcre pixman-1 png popt ssl util xml2 z

LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			gtop-2.0::devel/libgtop2 \
			rsvg-2::x11/gnome/librsvg

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/desktop-file-utils \
			::misc/shared-mime-info \
			::x11/gnome/py-gnome \
			::textproc/rarian

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON="${MODPY_BIN}"

post-extract:
.for _prog in ctrlinfo gdesklets gdesklets-daemon gdesklets-logview \
	      gdesklets-migration-tool gdesklets-shell test-control.py
	@perl -pi -e "s|/usr/bin/env python|${MODPY_BIN}|g" ${WRKSRC}/${_prog}
.endfor

.include <bsd.port.mk>
