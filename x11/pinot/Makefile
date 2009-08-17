# $OpenBSD: Makefile,v 1.1.1.1 2009/08/17 14:34:07 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	personal search and metasearch

DISTNAME=	pinot-0.94

CATEGORIES=	x11 misc

HOMEPAGE=	http://pinot.berlios.de/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo cairomm-1.0
WANTLIB += crypto dbus-1 expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4
WANTLIB += glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += idn m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4
WANTLIB += pcre pixman-1 png pthread pthread-stubs sigc-2.0 ssl
WANTLIB += stdc++ xcb xml2 z

MASTER_SITES=	${MASTER_SITE_BERLIOS:=pinot/}

MODULES=	devel/gettext

BUILD_DEPENDS=	::devel/boost

# XXX catppt - catdvi
LIB_DEPENDS=	gtkmm-2.4.>=7,gdkmm-2.4,atkmm-1.6::x11/gtk2mm \
		xml++-2.6::textproc/libxml++ \
		gmime-2.4:gmime->=2.4:mail/gmime24 \
		curl.>=13::net/curl \
		tag.>=7::audio/taglib \
		sqlite3.>=13::databases/sqlite3 \
		dbus-glib-1.>=4::x11/dbus-glib \
		exif.>=12::graphics/libexif

# port-lib-depends-check misses these ones because the depending lib
# is under lib/pinot/backends/
LIB_DEPENDS+=	textcat::textproc/libtextcat \
		xapian::databases/xapian-core

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils \
		::devel/xdg-utils \
		::archivers/unzip \
		::textproc/unrtf \
		::textproc/xpdf,-utils \
		::textproc/antiword \
		::misc/shared-mime-info

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		MKDIR_P="mkdir -p --"
CONFIGURE_ARGS= ${CONFIGURE_SHARED} \
		--enable-soap=no \
		--enable-xesam-glib=no \
		--enable-dbus=yes \
		--enable-mempool=yes \
		--enable-libarchive=no \
		--enable-gio=yes \
		--with-http=curl \
		--with-ssl=/usr

.ifdef DEBUG
CONFIGURE_ARGS+= --enable-debug
.endif

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/pinot

BASH_SCRIPTS=pinot-enum-index.sh pinot-cd.sh pinot-check-file.sh

pre-configure:
	${SUBST_CMD} \
		${WRKSRC}/{README,textcat_conf.txt,textcat3_conf.txt,Core/pinot-search.1,Utils/xdgmime/xdgmime.c}
	for i in ${BASH_SCRIPTS}; \
		do perl -pi -e 's,/bin/bash/,/bin/sh,g' ${WRKSRC}/scripts/bash/$${i}; done

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pinot
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/pinot/

.include <bsd.port.mk>
