# $OpenBSD: Makefile,v 1.72 2017/12/26 19:18:57 rsadowski Exp $

COMMENT=	personal search and metasearch

DISTNAME=	pinot-1.06
REVISION=	15

SHARED_LIBS +=  xapianbackend             0.0 # 1.0

CATEGORIES=	x11 misc

HOMEPAGE=	https://code.google.com/p/pinot-search/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xtst assuan atk-1.0
WANTLIB += atk-bridge-2.0 atkmm-1.6 atspi c cairo cairo-gobject
WANTLIB += cairomm-1.0 crypto curl dbus-1 dbus-glib-1 epoxy exiv2
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmime-2.6
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error gpgme graphite2 gthread-2.0
WANTLIB += gtk-3 gtkmm-3.0 harfbuzz iconv intl lzma m nghttp2
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre
WANTLIB += pixman-1 png sigc-2.0 sqlite3 ssl tag textcat uuid
WANTLIB += xapian xcb xcb-render xcb-shm xml++-2.6 xml2 z

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=pinot-search/}

# c++11
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS=	devel/boost \
		devel/desktop-file-utils \
		devel/gettext-tools \
		devel/libexecinfo

# XXX catppt - catdvi
LIB_DEPENDS=	x11/gtk3mm \
		databases/sqlite3 \
		textproc/libxml++>=2.40.0 \
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
		textproc/antiword \
		misc/shared-mime-info \
		x11/gtk+3,-guic

# pdftotext(1)
RUN_DEPENDS +=	print/poppler,-utils

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		CXXFLAGS="-std=c++11" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		MKDIR_P="mkdir -p --"
CONFIGURE_ARGS= --with-http=curl \
		--with-ssl=/usr \
		--enable-gtkmm3

.ifdef DEBUG
CONFIGURE_ARGS+= --enable-debug
.endif

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/pinot

BASH_SCRIPTS=pinot-enum-index.sh pinot-cd.sh pinot-check-file.sh

pre-configure:
	perl -pi -e 's,/usr/share,${LOCALBASE}/share,g' \
		${WRKSRC}/textcat3*_conf.txt
	${SUBST_CMD} \
		${WRKSRC}/{Makefile.in,README,textcat_conf.txt,Core/pinot-search.1,Utils/xdgmime/xdgmime.c}
	for i in ${BASH_SCRIPTS}; \
		do perl -pi -e 's,/bin/bash/,/bin/sh,g' ${WRKSRC}/scripts/bash/$${i}; done

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pinot
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/pinot/
	rm ${PREFIX}/lib/pinot/*.{a,la}

.include <bsd.port.mk>
