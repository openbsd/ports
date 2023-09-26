COMMENT-main=		mail and news client
COMMENT-bogofilter=	bogofilter plugin
COMMENT-spamassassin=	spamassassin plugin
COMMENT-pdfviewer=	pdfviewer plugin
COMMENT-gdata=		gdata plugin

V=			4.1.1
DISTNAME=		claws-mail-${V}
PKGNAME-main=		${DISTNAME}
PKGNAME-bogofilter=	claws-mail-bogofilter-${V}
PKGNAME-spamassassin=	claws-mail-spamassassin-${V}
PKGNAME-pdfviewer=	claws-mail-pdfviewer-${V}
PKGNAME-gdata=		claws-mail-gdata-${V}
REVISION-bogofilter=	1
REVISION-gdata=		1
REVISION-main=		1
REVISION-pdfviewer=	1
REVISION-spamassassin=	1

CATEGORIES=		mail news

HOMEPAGE=		https://www.claws-mail.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

SITES=			https://www.claws-mail.org/releases/

COMPILER =		base-clang ports-gcc base-gcc

MULTI_PACKAGES=		-main -bogofilter -spamassassin -pdfviewer -gdata
FLAVORS=		jpilot ldap
FLAVOR?=

FLAVOR_STRING=		${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=		FLAVOR_STRING

RUN_DEPENDS-bogofilter=	${BUILD_PKGPATH} \
			mail/bogofilter
RUN_DEPENDS-spamassassin=${BUILD_PKGPATH} \
			mail/p5-Mail-SpamAssassin

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject crypto curl dbus-1 epoxy etpan execinfo
WANTLIB += expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-3 harfbuzz iconv intl jpeg m nghttp2 nghttp3 ngtcp2
WANTLIB += ngtcp2_crypto_quictls pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre2-8 pixman-1 png sasl2 ssl xcb xcb-render xcb-shm z

WANTLIB-main =  ${WANTLIB}
WANTLIB-main += ICE SM X11-xcb archive aspell assuan b2 bz2 c canberra
WANTLIB-main += canberra-gtk3 db dbus-glib-1 enchant-2 gmp gnutls
WANTLIB-main += gpg-error gpgme gthread-2.0 gumbo hogweed ical icalss
WANTLIB-main += icalvcal icudata icui18n icuuc idn2 ltdl lz4 lzma nettle
WANTLIB-main += notify ogg p11-kit perl rsvg-2 startup-notification-1
WANTLIB-main += tasn1 unistring vorbis vorbisfile xcb-util xml2 zstd
WANTLIB-main += brotlidec brotlienc db_cxx

WANTLIB-gdata = ${WANTLIB}
WANTLIB-gdata += brotlicommon brotlidec gck-1 gcr-base-3
WANTLIB-gdata += gcrypt gdata goa-1.0 gpg-error idn2 json-glib-1.0
WANTLIB-gdata += lzma p11-kit psl soup-2.4 sqlite3 unistring xml2

WANTLIB-pdfviewer =  ${WANTLIB}
WANTLIB-pdfviewer += lcms2 lzma openjp2 png poppler poppler-glib tiff zstd


LIB_DEPENDS=		devel/glib2 \
			mail/libetpan \
			security/cyrus-sasl2 \
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
			security/gnutls>=2.2 \
			security/gpgme \
			security/libb2 \
			security/libnettle \
			textproc/enchant2 \
			textproc/libical \
			www/gumbo \
			x11/dbus-glib \
			x11/gnome/at-spi2-core

LIB_DEPENDS-pdfviewer=	${LIB_DEPENDS} \
			print/poppler

LIB_DEPENDS-gdata=	${LIB_DEPENDS} \
			devel/libgdata

CONFIGURE_ARGS+=	--disable-acpi_notifier-plugin \
			--disable-compface \
			--disable-fancy-plugin \
			--disable-python-plugin \
			--disable-tnef_parse-plugin \
			--disable-bsfilter-plugin \
			--enable-crash-dialog

USE_GMAKE=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	autoconf

AUTOCONF_VERSION=	2.71
CONFIGURE_ENV+=		CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"

.if ${FLAVOR:Mjpilot}
LIB_DEPENDS-main+=	comms/pilot-link
WANTLIB-main +=		pisock
RUN_DEPENDS-main+=	comms/jpilot
.else
CONFIGURE_ARGS+=	--disable-jpilot
.endif

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
	${INSTALL_DATA} ${WRKSRC}/claws-mail.png ${PREFIX}/share/icons/hicolor/48x48/apps/claws-mail.png
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/64x64/apps
	${INSTALL_DATA} ${WRKSRC}/claws-mail-64x64.png ${PREFIX}/share/icons/hicolor/64x64/apps/claws-mail.png
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/128x128/apps
	${INSTALL_DATA} ${WRKSRC}/claws-mail-128x128.png ${PREFIX}/share/icons/hicolor/128x128/apps/claws-mail.png
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/claws-mail.desktop ${PREFIX}/share/applications/claws-mail.desktop
	${INSTALL_DATA_DIR} ${PREFIX}/share/claws-mail/tools/kdeservicemenu
.for i in ${TOOLS}
	${INSTALL_DATA} ${WRKSRC}/tools/${i} \
	${PREFIX}/share/claws-mail/tools/${i}
.endfor

.include <bsd.port.mk>
