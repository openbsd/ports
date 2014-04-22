# $OpenBSD: Makefile,v 1.72 2014/04/22 19:26:45 naddy Exp $

SHARED_ONLY=		Yes

COMMENT-main=		mail and news client
COMMENT-bogofilter=	bogofilter plugin
COMMENT-clamav=		clamav plugin
COMMENT-spamassassin=	spamassassin plugin
COMMENT-htmlviewer=	fancy htmlviewer plugin
COMMENT-pdfviewer=	pdfviewer plugin
COMMENT-gdata=		gdata plugin

V=			3.9.3
REVISION=		1
DISTNAME=		claws-mail-${V}
PKGNAME-main=		${DISTNAME}
PKGNAME-bogofilter=	claws-mail-bogofilter-${V}
PKGNAME-spamassassin=	claws-mail-spamassassin-${V}
PKGNAME-htmlviewer=	claws-mail-htmlviewer-${V}
PKGNAME-pdfviewer=	claws-mail-pdfviewer-${V}
PKGNAME-gdata=		claws-mail-gdata-${V}

CATEGORIES=		mail news

HOMEPAGE=		http://www.claws-mail.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sylpheed-claws/}
EXTRACT_SUFX=		.tar.bz2

DIST_SUBDIR=		claws

MULTI_PACKAGES=		-main -bogofilter -spamassassin -htmlviewer -pdfviewer -gdata
FLAVORS=		jpilot compface ldap debug
FLAVOR?=

FLAVOR_STRING=		${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=		FLAVOR_STRING

RUN_DEPENDS-bogofilter=	${BUILD_PKGPATH} \
			mail/bogofilter
RUN_DEPENDS-spamassassin=${BUILD_PKGPATH} \
			mail/p5-Mail-SpamAssassin

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender archive atk-1.0 bz2 cairo crypto curl
WANTLIB += etpan execinfo expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz idn lzma
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs sasl2 ssl xcb xcb-render
WANTLIB += xcb-shm z

WANTLIB-main =  ${WANTLIB}
WANTLIB-main += ICE SM X11-xcb assuan c dbus-1 dbus-glib-1 enchant
WANTLIB-main += gmp gnutls gpg-error gpgme hogweed nettle p11-kit perl
WANTLIB-main += startup-notification-1 stdc++ tasn1 util xcb-util xml2
WANTLIB-main += canberra canberra-gtk notify ltdl ogg vorbis vorbisfile

WANTLIB-gdata = ${WANTLIB}
WANTLIB-gdata += gck-1 gcr-base-3 gcrypt gdata goa-1.0 gpg-error nspr4
WANTLIB-gdata += nss3 oauth p11-kit plc4 plds4 smime3 softokn3 soup-2.4
WANTLIB-gdata += sqlite3 ssl3 xml2

WANTLIB-htmlviewer =  ${WANTLIB}
WANTLIB-htmlviewer += EGL GL ICE SM Xt dbus-1 dbus-glib-1 enchant
WANTLIB-htmlviewer += orc-0.4 gcrypt geoclue gpg-error
WANTLIB-htmlviewer += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB-htmlviewer += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 harfbuzz-icu
WANTLIB-htmlviewer += icudata icui18n icuuc javascriptcoregtk-1.0
WANTLIB-htmlviewer += jpeg secret-1 soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB-htmlviewer += stdc++ webkitgtk-1.0 webp xml2 xslt

WANTLIB-pdfviewer =  ${WANTLIB}
WANTLIB-pdfviewer += jpeg lcms2 openjpeg poppler poppler-glib tiff

LIB_DEPENDS=		archivers/libarchive \
			archivers/xz \
			devel/libexecinfo \
			mail/libetpan \
			security/cyrus-sasl2 \
			x11/gtk+2

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			devel/desktop-file-utils \
			x11/gtk+2,-guic

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/startup-notification \
			textproc/enchant \
			audio/libcanberra,-gtk \
			devel/libnotify \
			security/gnutls>=2.2 \
			security/gpgme \
			x11/dbus-glib

LIB_DEPENDS-htmlviewer=	${LIB_DEPENDS} \
			www/webkit>=2.0.0

LIB_DEPENDS-pdfviewer=	${LIB_DEPENDS} \
			print/poppler

LIB_DEPENDS-gdata=	${LIB_DEPENDS} \
			devel/libgdata

#geolocation looks for champlain <= 0.10
#python tries to dlopen libpython2.7.so
CONFIGURE_ARGS+=	--disable-acpi_notifier-plugin \
			--disable-geolocation-plugin \
			--disable-python-plugin \
			--enable-new-addrbook


MODULES=		devel/gettext
USE_GMAKE=		Yes
USE_GROFF =		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	autoconf

AUTOCONF_VERSION=	2.69
CONFIGURE_ENV+=		CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"

.if ${FLAVOR:Mjpilot}
LIB_DEPENDS-main+=	comms/pilot-link
WANTLIB-main +=		pisock
RUN_DEPENDS-main+=	comms/jpilot
.else
CONFIGURE_ARGS+=	--disable-jpilot
.endif

.if ${FLAVOR:Mcompface}
PERMIT_PACKAGE_CDROM=	No Fee
PERMIT_PACKAGE_FTP=	Yes
LIB_DEPENDS-main+=	mail/faces
WANTLIB-main +=		compface>=1
.else
CONFIGURE_ARGS+=	--disable-compface
.endif

.if ${FLAVOR:Mldap}
WANTLIB-main+=		lber-2.4 ldap-2.4
LIB_DEPENDS-main+=	databases/openldap
.else
CONFIGURE_ARGS+=	--disable-ldap
.endif

.if ${FLAVOR:Mdebug}
CFLAGS+=	-O0 -g
INSTALL_STRIP=
.endif

TOOLS=		OOo2claws-mail.pl \
		acroread2claws-mail.pl \
		calypso_convert.pl \
		claws-mail-compose-insert-files.pl \
		convert_mbox.pl \
		csv2addressbook.pl \
		eud2gc.py \
		filter_conv.pl filter_conv_new.pl \
		fix_date.sh \
		freshmeat_search.pl \
		gif2xface.pl \
		google_msgid.pl google_search.pl \
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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/48x48/apps
	${INSTALL_DATA} ${WRKSRC}/claws-mail.png ${PREFIX}/share/icons/hicolor/48x48/apps/claws-mail.png
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/64x64/apps
	${INSTALL_DATA} ${WRKSRC}/claws-mail-64x64.png ${PREFIX}/share/icons/hicolor/64x64/apps/claws-mail.png
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/128x128/apps
	${INSTALL_DATA} ${WRKSRC}/claws-mail-128x128.png ${PREFIX}/share/icons/hicolor/128x128/apps/claws-mail.png
	${INSTALL_DATA_DIR} ${PREFIX}/share/claws-mail/tools/kdeservicemenu
.for i in ${TOOLS}
	${INSTALL_DATA} ${WRKSRC}/tools/${i} \
	${PREFIX}/share/claws-mail/tools/${i}
.endfor

.include <bsd.port.mk>
