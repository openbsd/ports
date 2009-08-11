# $OpenBSD: Makefile,v 1.12 2009/08/11 08:42:07 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		mini programs for your desktop

V=			0.36.1
DISTNAME=		gdesklets-${V}
PKGNAME=		${DISTNAME}p3
CATEGORIES=		x11

HOMEPAGE=		http://www.gdesklets.de/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}files/

WRKDIST=		${WRKDIR}/gDesklets-${V}

MODULES=		devel/gettext \
			lang/python \
			textproc/intltool

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 bz2 cairo croco-0.6 \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gsf-1 \
		gtk-x11-2.0 kvm m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png xml2 z pthread-stubs xcb

LIB_DEPENDS=		gtop-2.0::devel/libgtop2 \
			rsvg-2::x11/gnome/librsvg

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::textproc/rarian
RUN_DEPENDS=		::devel/desktop-file-utils \
			::misc/shared-mime-info \
			::x11/gnome/py-gnome

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-static

post-extract:
.for _prog in ctrlinfo gdesklets gdesklets-daemon gdesklets-logview \
	      gdesklets-migration-tool gdesklets-shell test-control.py
	@perl -pi -e "s|/usr/bin/env python|${MODPY_BIN}|g" ${WRKSRC}/${_prog}
.endfor

.include <bsd.port.mk>
