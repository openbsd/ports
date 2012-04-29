# $OpenBSD: Makefile,v 1.30 2012/04/29 21:24:24 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	personal search and metasearch

DISTNAME=	pinot-0.98
REVISION=	2

CATEGORIES=	x11 misc

HOMEPAGE=	http://code.google.com/p/pinot-search/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atkmm-1.6 c cairo cairomm-1.0
WANTLIB += crypto curl dbus-1 dbus-glib-1 e2fs-uuid exiv2 expat
WANTLIB += ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdkmm-2.4 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmime-2.6
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 gtkmm-2.4
WANTLIB += idn m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4
WANTLIB += pcre pixman-1 png pthread pthread-stubs sigc-2.0 sqlite3
WANTLIB += ssl stdc++ tag textcat xapian xcb xcb-render xcb-shm
WANTLIB += xml++-2.6 xml2 z

MASTER_SITES=	http://pinot-search.googlecode.com/files/

MODULES=	devel/gettext

BUILD_DEPENDS=	devel/boost \
		misc/shared-mime-info \
		devel/desktop-file-utils \
		devel/libexecinfo

# XXX catppt - catdvi
LIB_DEPENDS=	x11/gtk2mm \
		textproc/libxml++ \
		mail/gmime>=2.6.0 \
		net/curl \
		audio/taglib \
		x11/dbus-glib \
		graphics/exiv2 \
		devel/libidn

# port-lib-depends-check misses these ones because the depending lib
# is under lib/pinot/backends/
LIB_DEPENDS+=	textproc/libtextcat \
		databases/xapian-core

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/xdg-utils \
		archivers/unzip \
		textproc/unrtf \
		textproc/xpdf,-utils \
		textproc/antiword \
		misc/shared-mime-info \
		x11/gtk+2,-guic

# libxapianbackend.so: undefined symbol '__dso_handle'
USE_LIBTOOL=	gnu

USE_GROFF=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		MKDIR_P="mkdir -p --"
CONFIGURE_ARGS= ${CONFIGURE_SHARED} \
		--with-http=curl \
		--with-ssl=/usr

.ifdef DEBUG
CONFIGURE_ARGS+= --enable-debug
.endif

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/pinot

BASH_SCRIPTS=pinot-enum-index.sh pinot-cd.sh pinot-check-file.sh

pre-configure:
	${SUBST_CMD} \
		${WRKSRC}/{Makefile.in,README,textcat_conf.txt,textcat3_conf.txt,Core/pinot-search.1,Utils/xdgmime/xdgmime.c}
	for i in ${BASH_SCRIPTS}; \
		do perl -pi -e 's,/bin/bash/,/bin/sh,g' ${WRKSRC}/scripts/bash/$${i}; done

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pinot
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/pinot/

.include <bsd.port.mk>
