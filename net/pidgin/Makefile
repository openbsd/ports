# $OpenBSD: Makefile,v 1.22 2008/06/05 10:24:14 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	multi-protocol instant messaging client

DISTNAME=	pidgin-2.4.2
SHARED_LIBS += jabber               0.0      # .0.0
SHARED_LIBS += oscar                0.0      # .0.0
SHARED_LIBS += purple               3.2      # .4.2
SHARED_LIBS += purple-client        3.2      # .4.2
SHARED_LIBS += gnt                  3.1      # .0.0
CATEGORIES=	net

HOMEPAGE=	http://pidgin.im/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
			Xext Xfixes Xi Xinerama Xrandr Xrender Xss atk-1.0 \
			c cairo crypto dbus-1 expat fontconfig freetype \
			glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
			m ncurses panel pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 pcre pixman-1 png pthread ssl stdc++ z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pidgin/}

MODULES=	devel/gettext lang/python textproc/intltool

RUN_DEPENDS+=	:dbus-python-*:x11/dbus-python \
		:py-gtk2-*:x11/py-gtk2 \
		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS+=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		startup-notification-1::devel/startup-notification \
		silc.>=7,silcclient.>=5::devel/silc-toolkit \
		meanwhile::net/meanwhile \
		gadu::net/libgadu \
		xml2::textproc/libxml \
		dbus-glib-1::x11/dbus-glib

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
USE_GMAKE=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
CONFIGURE_ARGS+= --with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/pidgin \
		 --disable-avahi \
		 --disable-gevolution \
		 --disable-gnutls \
		 --disable-nm \
		 --disable-nss \
		 --disable-perl \
		 --disable-tcl \
		 --disable-tk \
		 --disable-cap \
		 --disable-schemas-install \
		 --with-python=${MODPY_BIN}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS+=	CFLAGS="${CFLAGS}"

FLAVORS=	audio debug gtkspell
FLAVOR?=	

.if ${FLAVOR:L:Maudio}
LIB_DEPENDS+=		gstreamer-0.10:gstreamer-0.10.*:multimedia/gstreamer-0.10/core
.else
CONFIGURE_ARGS+=	--disable-gstreamer
# --disable-gstreamer is not sufficient
MAKE_FLAGS+=    GSTREAMER_CFLAGS= GSTREAMER_LIBS=
.endif

.if ${FLAVOR:L:Mdebug}
CFLAGS+=	-O0
CONFIGURE_ARGS+=--enable-debug --disable-mcheck
INSTALL_STRIP=
.endif

.if ${FLAVOR:L:Mgtkspell}
LIB_DEPENDS+=	gtkspell::textproc/gtkspell
WANTLIB+=	aspell
.else
CONFIGURE_ARGS+=--disable-gtkspell
.endif

PYTHON_SCRIPTS=	purple-remote purple-url-handler

post-extract:
	cp -f ${FILESDIR}/ssl-openssl.c ${WRKSRC}/libpurple/plugins/ssl

post-install:
	perl -pi -e 's,/bin/bash,/bin/sh,g' ${PREFIX}/bin/purple-send*
.for f in ${PYTHON_SCRIPTS}
	perl -pi -e 's#%python%#${MODPY_BIN}#g' ${PREFIX}/bin/${f}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/dbus-1/services/
	sed -e "s,!!PREFIX!!,${TRUEPREFIX}," \
		< ${FILESDIR}/purple.service \
		> ${PREFIX}/share/dbus-1/services/purple.service
	mv ${PREFIX}/lib/purple-2/libjabber.* ${PREFIX}/lib
	mv ${PREFIX}/lib/purple-2/liboscar.* ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pidgin/

.include <bsd.port.mk>
