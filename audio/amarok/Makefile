# $OpenBSD: Makefile,v 1.61 2013/12/22 19:24:33 zhuk Exp $

CATEGORIES =	audio x11 x11/kde
COMMENT =	music player for KDE

HOMEPAGE =	http://amarok.kde.org/
V =		1.4.10
MASTER_SITES =	${MASTER_SITE_KDE:=stable/amarok/$V/src/}
DISTNAME =	amarok-$V
REVISION =	22
EXTRACT_SUFX =	.tar.bz2

# GPLv2/LGPLv2/GFDL
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =  GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft
WANTLIB += Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2
WANTLIB += avahi-client avahi-common avutil c dbus-1 dns_sd drm
WANTLIB += expat fam ffi fontconfig freetype gcrypt gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gpod idn lcms m mng mtp njb pcre pcreposix plist
WANTLIB += png pthread pthread-stubs sqlite3 stdc++ tag usb
WANTLIB += usb-1.0 util xcb xine xml2 z ${MODRUBY_WANTLIB}
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdeprint
WANTLIB += ${KDE}/kdesu ${KDE}/kdeui ${KDE}/kdnssd
WANTLIB += ${KDE}/khtml ${KDE}/kio ${KDE}/kjs ${KDE}/knewstuff
WANTLIB += ${KDE}/konqsidebarplugin ${KDE}/kparts ${KDE}/kutils
WANTLIB += ${KDE}/kwalletclient

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	x11/kde/libs3 \
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
