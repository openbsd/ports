# $OpenBSD: Makefile,v 1.37 2010/09/05 22:00:13 sthen Exp $

CATEGORIES =	audio x11 x11/kde
COMMENT =	music player for KDE

HOMEPAGE =	http://amarok.kde.org/
V =		1.4.10
MASTER_SITES =	${MASTER_SITE_KDE:=stable/amarok/$V/src/}
DISTNAME =	amarok-$V
REVISION =	6
EXTRACT_SUFX =	.tar.bz2

# GPLv2/LGPLv2/GFDL
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes

FLAVORS =	debug

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c expat
WANTLIB += fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 iconv idn intl jpeg m pcre
WANTLIB += pcreposix png pthread stdc++ usb util xml2 z
WANTLIB += pthread-stubs xcb lib/qt3/qt-mt.>=3.33 konqsidebarplugin
WANTLIB += kdecore.>=6 DCOP khtml kwalletclient kdefx kdeprint
WANTLIB += kutils kdeui kparts kio kdesu kjs knewstuff kdnssd tag.>=5.0
WANTLIB += xine sqlite3 gpod njb ruby mtp

RUN_DEPENDS =	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS +=	::x11/qt3 \
		::x11/kde/libs3 \
		::x11/kde/base3 \
		::x11/gtk+2 \
		:taglib->=1.4:audio/taglib \
		::multimedia/xine-lib \
		::databases/sqlite3 \
		::audio/libgpod \
		::audio/libnjb \
		::lang/ruby \
		::devel/libmtp

SHARED_LIBS +=	amarok               0.0      # .0.0
SHARED_LIBS +=	http11               0.0      # .0.0

MODULES =		x11/kde
MODKDE_VERSION =	3.5.7
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61
CONFIGURE_ARGS +=	${MODKDE_CONFIGURE_ARGS}
USE_GMAKE =		Yes
USE_X11=		Yes
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
