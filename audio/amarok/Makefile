# $OpenBSD: Makefile,v 1.33 2009/08/10 06:29:52 kili Exp $

CATEGORIES =	audio x11 x11/kde
COMMENT =	music player for KDE

HOMEPAGE =	http://amarok.kde.org/
V =		1.4.10
MASTER_SITES =	${MASTER_SITE_KDE:=stable/amarok/$V/src/}
DISTNAME =	amarok-$V
PKGNAME =	${DISTNAME}p3
EXTRACT_SUFX =	.tar.bz2

# GPLv2/LGPLv2/GFDL
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes

FLAVORS =	debug

RUN_DEPENDS =	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS +=	lib/qt3/qt-mt.>=3.33::x11/qt3 \
		kdecore.>=6,DCOP,khtml,kwalletclient,kdefx,kdeprint,kutils,kdeui,kparts,kio,kdesu,kjs,knewstuff,kdnssd::x11/kde/libs3 \
		konqsidebarplugin::x11/kde/base3 \
		tag.>=5.0:taglib->=1.4:audio/taglib \
		xine::multimedia/xine-lib \
		sqlite3::databases/sqlite3 \
		gpod::audio/libgpod \
		njb::audio/libnjb \
		ruby::lang/ruby \
		mtp::devel/libmtp

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c expat
WANTLIB += fam fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 iconv idn intl jpeg m pcre
WANTLIB += pcreposix png pthread rpcsvc stdc++ usb util xml2 z
WANTLIB += pthread-stubs xcb

SHARED_LIBS +=	amarok               0.0      # .0.0
SHARED_LIBS +=	http11               0.0      # .0.0

MODULES =		x11/kde
MODKDE_VERSION =	3.5.7
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

.include <bsd.port.mk>
