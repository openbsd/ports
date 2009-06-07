# $OpenBSD: Makefile,v 1.31 2009/06/07 05:59:48 ajacoutot Exp $

COMMENT=		mail notification for freedesktop.org-compliant system trays
DISTNAME=		mail-notification-5.4
PKGNAME=		${DISTNAME}p6

CATEGORIES=		mail

EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.nongnu.org/mailnotify/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage \
		Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		art_lgpl_2 atk-1.0 bonobo-2 \
		bonobo-activation bonoboui-2 c cairo crypto dbus-1 \
		dbus-glib-1 expat fontconfig freetype gailutil \
		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png popt pthread ssl xml2 z

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=mailnotify/}

MODULES=	devel/gettext \
		textproc/intltool \
		devel/gconf2

BUILD_DEPENDS=	::textproc/rarian
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils \
		:yelp-*:x11/gnome/yelp \
		:notification-daemon-*|notification-daemon-xfce-*|xfce4-notifyd-*:sysutils/notification-daemon
LIB_DEPENDS=	gnomeui-2.>=2400::x11/gnome/libgnomeui \
		notify::devel/libnotify \
		sasl2::security/cyrus-sasl2 \
		gmime-2.0::mail/gmime

USE_X11=		Yes
NO_REGRESS=		Yes
MODGCONF2_SCHEMAS_DIR=	mail-notification

do-configure:
	cd ${WRKSRC} && ./jb configure ${JB_FLAGS} \
		evolution=no hotmail=no yahoo=no \
		cc="${CC}" \
		cflags="${CFLAGS}" \
		cppflags="-I${LOCALBASE}/include" \
		ldflags="-L${LOCALBASE}/lib -liconv" \
		prefix="${PREFIX}" \
		data-owner=${SHAREOWN} \
		data-group=${SHAREGRP} \
		program-owner=${BINOWN} \
		program-group=${BINGRP} \
		library-owner=${BINOWN} \
		library-group=${BINGRP} \
		gconf-schemas-dir="${LOCALBASE}/${SCHEMAS_INSTDIR}/" \
		gconftool-2="/usr/bin/true" \
		destdir="${WRKINST}"

do-build:
	cd ${WRKBUILD} && ./jb build

do-install:
	cd ${WRKBUILD} && ./jb ${INSTALL_TARGET}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mail-notification
	mv ${PREFIX}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/mail-notification
	rm -fr ${PREFIX}${SYSCONFDIR}

.include <bsd.port.mk>
