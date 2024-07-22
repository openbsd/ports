COMMENT-main=		mail and news client
COMMENT-bogofilter=	bogofilter plugin
COMMENT-spamassassin=	spamassassin plugin
COMMENT-pdfviewer=	pdfviewer plugin

V=			4.3.0
DISTNAME=		claws-mail-${V}

CATEGORIES=		mail news

HOMEPAGE=		https://www.claws-mail.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

SITES=			https://www.claws-mail.org/releases/

COMPILER =		base-clang ports-gcc

MULTI_PACKAGES=		-main -bogofilter -spamassassin -pdfviewer
FLAVORS=		ldap
FLAVOR?=

FLAVOR_STRING=		${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=		FLAVOR_STRING

RUN_DEPENDS-bogofilter=	${BUILD_PKGPATH} \
			mail/bogofilter
RUN_DEPENDS-spamassassin=${BUILD_PKGPATH} \
			mail/p5-Mail-SpamAssassin

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi cairo cairo-gobject
WANTLIB += dbus-1 epoll-shim epoxy execinfo expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gtk-3 harfbuzz iconv intl jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png
WANTLIB += wayland-client wayland-cursor wayland-egl xcb xcb-render xcb-shm
WANTLIB += xkbcommon z

WANTLIB-bogofilter = ${WANTLIB}

WANTLIB-main = ${WANTLIB}
WANTLIB-main += ICE SM X11-xcb archive aspell assuan b2
WANTLIB-main += bz2 c canberra canberra-gtk3 crypto curl db db_cxx
WANTLIB-main += dbus-glib-1 enchant-2 etpan gmp gnutls gpg-error gpgme
WANTLIB-main += gthread-2.0 gumbo hogweed ical icalss icalvcal icudata
WANTLIB-main += icui18n icuuc idn2 ltdl lz4 lzma nettle nghttp2 nghttp3
WANTLIB-main += ngtcp2 ngtcp2_crypto_quictls notify ogg p11-kit perl rsvg-2
WANTLIB-main += sasl2 ssl startup-notification-1 tasn1 unistring
WANTLIB-main += vorbis vorbisfile xcb-util xml2 zstd

WANTLIB-pdfviewer = ${WANTLIB}
WANTLIB-pdfviewer += lcms2 lzma openjp2 png poppler poppler-glib tiff zstd


LIB_DEPENDS=		devel/glib2 \
			x11/gtk+3

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			archivers/libarchive \
			archivers/xz \
			archivers/zstd \
			audio/libcanberra,-gtk3 \
			devel/glib2 \
			devel/libnotify \
			devel/startup-notification \
			mail/libetpan \
			security/cyrus-sasl2 \
			security/gnutls>=2.2 \
			security/gpgme \
			security/libb2 \
			security/libnettle \
			textproc/enchant2 \
			textproc/libical \
			textproc/libxml \
			www/gumbo \
			x11/dbus-glib \
			x11/gnome/at-spi2-core \
			x11/gnome/librsvg

LIB_DEPENDS-pdfviewer=	${LIB_DEPENDS} \
			print/poppler

CONFIGURE_ARGS+=	--disable-acpi_notifier-plugin \
			--disable-compface \
			--disable-fancy-plugin \
			--disable-jpilot \
			--disable-python-plugin \
			--disable-tnef_parse-plugin \
			--disable-bsfilter-plugin \
			--enable-crash-dialog

USE_GMAKE=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	autoconf

AUTOCONF_VERSION=	2.71
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.if ${FLAVOR:Mldap}
WANTLIB-main+=		lber ldap
LIB_DEPENDS-main+=	databases/openldap
.else
CONFIGURE_ARGS+=	--disable-ldap
.endif

TOOLS=		acroread2claws-mail.pl \
		calypso_convert.pl \
		claws-mail-compose-insert-files.pl \
		convert_mbox.pl \
		csv2addressbook.pl \
		eud2gc.py \
		filter_conv.pl filter_conv_new.pl \
		fix_date.sh \
		gif2xface.pl \
		google_msgid.pl \
		ddg_search.pl \
		kmail-mailbox2claws-mail.pl \
		kmail2claws-mail.pl kmail2claws-mail_v2.pl \
		mairix.sh \
		mew2claws-mail.pl \
		multiwebsearch.conf multiwebsearch.pl \
		nautilus2claws-mail.sh \
		outlook2claws-mail.pl \
		popfile-link.sh \
		tb2claws-mail tbird2claws.py \
		textviewer.pl textviewer.sh \
		thunderbird-filters-convertor.pl \
		uudec uuooffice \
		vcard2xml.py \
		README \
		kdeservicemenu/claws-mail-attach-files.desktop.kde4template \
		kdeservicemenu/claws-mail-attach-files.desktop.template \
		kdeservicemenu/claws-mail-kdeservicemenu.pl \
		kdeservicemenu/install.sh \
		kdeservicemenu/README

# src/plugins/litehtml_viewer build breaks; tries to pull in this
# file instead of the C++ header /usr/include/c++/v1/version
pre-build:
	rm ${WRKSRC}/version

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/48x48/apps
	${INSTALL_DATA} ${WRKSRC}/claws-mail.png \
		${PREFIX}/share/icons/hicolor/48x48/apps/claws-mail.png
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/64x64/apps
	${INSTALL_DATA} ${WRKSRC}/claws-mail-64x64.png \
		${PREFIX}/share/icons/hicolor/64x64/apps/claws-mail.png
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/128x128/apps
	${INSTALL_DATA} ${WRKSRC}/claws-mail-128x128.png \
		${PREFIX}/share/icons/hicolor/128x128/apps/claws-mail.png
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/claws-mail.desktop \
		${PREFIX}/share/applications/claws-mail.desktop
	${INSTALL_DATA_DIR} ${PREFIX}/share/claws-mail/tools/kdeservicemenu
.for i in ${TOOLS}
	${INSTALL_DATA} ${WRKSRC}/tools/${i} \
	${PREFIX}/share/claws-mail/tools/${i}
.endfor

.include <bsd.port.mk>
