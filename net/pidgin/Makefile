# $OpenBSD: Makefile,v 1.7 2007/08/02 08:31:34 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"multi-protocol instant messaging client"

DISTNAME=	pidgin-2.1.0
PKGNAME=	${DISTNAME}p0
SHARED_LIBS += jabber               0.0      # .0.0
SHARED_LIBS += oscar                0.0      # .0.0
SHARED_LIBS += purple               1.0      # .1.0
SHARED_LIBS += purple-client        1.0      # .1.0
SHARED_LIBS += gnt                  1.0      # .0.0
CATEGORIES=	net

HOMEPAGE=	http://pidgin.im/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		glib-2.0 ICE SM X11 Xext Xrender Xss \
			atk-1.0 c crypto dbus-1 expat fontconfig freetype \
			gmodule-2.0 gobject-2.0 gthread-2.0 pango-1.0 \
			ssl pangocairo-1.0 cairo glitz png \
			pangoft2-1.0 z pthread m ncurses panel stdc++
WANTLIB += Xau Xcursor Xdmcp Xfixes Xi Xinerama Xrandr

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pidgin/}

MODULES=	devel/gettext lang/python

BUILD_DEPENDS+=	:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS+=	:dbus-python-*:x11/dbus-python \
		:py-gtk2-*:x11/py-gtk2
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
CONFIGURE_ARGS+= --disable-gevolution \
		 --disable-gnutls \
		 --disable-nss \
		 --disable-perl \
		 --disable-tcl \
		 --disable-tk \
		 --disable-cap \
		 --disable-schemas-install \
		 --enable-openssl \
		 --enable-consoleui \
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
	sed -e "s,!!LOCALBASE!!,${LOCALBASE}," \
		< ${FILESDIR}/purple.service \
		> ${PREFIX}/share/dbus-1/services/purple.service
	mv ${PREFIX}/lib/purple-2/libjabber.* ${PREFIX}/lib
	mv ${PREFIX}/lib/purple-2/liboscar.* ${PREFIX}/lib

.include <bsd.port.mk>
