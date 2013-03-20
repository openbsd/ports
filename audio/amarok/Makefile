# $OpenBSD: Makefile,v 1.56 2013/03/20 19:13:50 jeremy Exp $

CATEGORIES =	audio x11 x11/kde
COMMENT =	music player for KDE

HOMEPAGE =	http://amarok.kde.org/
V =		1.4.10
MASTER_SITES =	${MASTER_SITE_KDE:=stable/amarok/$V/src/}
DISTNAME =	amarok-$V
REVISION =	17
EXTRACT_SUFX =	.tar.bz2

# GPLv2/LGPLv2/GFDL
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += ICE SM X11 Xext Xrender art_lgpl_2 c expat
WANTLIB += fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 idn jpeg m pcre
WANTLIB += pcreposix png pthread stdc++ usb util xml2 z
WANTLIB += xcb lib/qt3/qt-mt>=3.33 konqsidebarplugin
WANTLIB += kdecore>=6 DCOP khtml kwalletclient kdefx kdeprint
WANTLIB += kutils kdeui kparts kio kdesu kjs knewstuff kdnssd tag>=5.0
WANTLIB += xine sqlite3 gpod njb mtp ${MODRUBY_WANTLIB}
WANTLIB += GL Xcursor Xdamage Xfixes Xft Xi Xinerama Xmu Xrandr
WANTLIB += Xt Xxf86vm drm ffi lcms mng
WANTLIB += avutil fam gcrypt gpg-error plist usb-1.0

RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS +=	x11/kde/libs3 \
		x11/kde/base3 \
		x11/gtk+2 \
		audio/taglib>=1.4 \
		multimedia/xine-lib \
		audio/libgpod \
		audio/libnjb \
		devel/libmtp \
		${MODRUBY_LIB_DEPENDS}

SHARED_LIBS +=	amarok               0.0      # .0.0
SHARED_LIBS +=	http11               0.0      # .0.0

MODULES =		x11/kde lang/ruby devel/gettext
MODKDE_VERSION =	3.5.7
MODRUBY_BUILDDEP =	No
MODRUBY_REV =		1.8
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61
CONFIGURE_ARGS +=	${MODKDE_CONFIGURE_ARGS}
USE_GMAKE =		Yes
CONFIGURE_ENV +=	${MODKDE_CONFIGURE_ENV}
MAKE_ENV =		${CONFIGURE_ENV}
MAKE_FLAGS +=		${MODKDE_MAKE_FLAGS}
PORTHOME =		${WRKDIR}

CONFIGURE_ARGS +=	--with-xine \
			--without-arts \
			--without-gstreamer \
			--without-included-sqlite \
			--without-musicbrainz \
			--without-opengl \
			--without-xmms

pre-configure:
	cd ${WRKSRC} && find . -name '*.rb' -exec \
		perl -pi -e 's,#!/usr/bin/env ruby,#!${RUBY},' {} \;

.include <bsd.port.mk>
