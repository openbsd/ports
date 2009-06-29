# $OpenBSD: Makefile,v 1.26 2009/06/29 09:23:39 landry Exp $

SHARED_ONLY=		Yes

COMMENT-main=		mail and news client
COMMENT-docs=		documentation
COMMENT-bogofilter=	bogofilter plugin
COMMENT-clamav=		clamav plugin
COMMENT-spamassassin=	spamassassin plugin

V=			3.7.1
DISTNAME=		claws-mail-${V}
PKGNAME-main=			${DISTNAME}p0
FULLPKGNAME-docs=		claws-mail-docs-${V}
FULLPKGNAME-bogofilter=		claws-mail-bogofilter-${V}p0
FULLPKGNAME-spamassassin=	claws-mail-spamassassin-${V}p0
CATEGORIES=		mail news

HOMEPAGE=		http://www.claws-mail.org/

MAINTAINER=		Ulrich Kahl <ulrich.kahl@cityweb.de>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sylpheed-claws/}
EXTRACT_SUFX=		.tar.bz2

DIST_SUBDIR=		claws

MULTI_PACKAGES=		-main -docs -bogofilter -spamassassin
FLAVORS=		jpilot compface ldap debug
FLAVOR?=

FLAVOR_STRING=		${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=		FLAVOR_STRING

RUN_DEPENDS-bogofilter=	::${BUILD_PKGPATH} \
			::mail/bogofilter 
RUN_DEPENDS-spamassassin=::${BUILD_PKGPATH} \
			::mail/p5-Mail-SpamAssassin 

WANTLIB=		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
			Xi Xinerama Xrandr Xrender atk-1.0 cairo crypto curl \
			expat fontconfig freetype gio-2.0 glib-2.0 glitz \
			gmodule-2.0 gobject-2.0 idn m pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 pcre pixman-1 png ssl tasn1 z

WANTLIB-main=		${WANTLIB} ICE SM c dbus-1 gthread-2.0 gpg-error \
			gcrypt pthread stdc++

WANTLIB-docs=

WANTLIB-bogofilter=	${WANTLIB} gcrypt gnutls gpg-error

WANTLIB-spamassassin=	${WANTLIB} gcrypt gnutls gpg-error

LIB_DEPENDS=		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
			execinfo::devel/libexecinfo \
			etpan.>=13::mail/libetpan \
			sasl2::security/cyrus-sasl2

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			:desktop-file-utils-*:devel/desktop-file-utils

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			startup-notification-1::devel/startup-notification \
			enchant::textproc/enchant \
			gnutls::security/gnutls \
			gpgme::security/gpgme \
			dbus-glib-1::x11/dbus-glib

CONFIGURE_ARGS+=	--disable-gnomeprint \
			--disable-networkmanager-support \
			--disable-dillo-viewer-plugin

LIB_DEPENDS-docs=
PKG_ARCH-docs=	*

MODULES=		devel/gettext
USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.61
CONFIGURE_ENV+=		CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"

.if ${FLAVOR:L:Mjpilot}
LIB_DEPENDS-main+=	pisock::comms/pilot-link 
RUN_DEPENDS-main+=	::comms/jpilot
.else
CONFIGURE_ARGS+=	--disable-jpilot
.endif

.if ${FLAVOR:L:Mcompface}
PERMIT_PACKAGE_CDROM=   No Fee
PERMIT_DISTFILES_CDROM= No Fee
LIB_DEPENDS-main+=     compface.>=1::mail/faces
.else
CONFIGURE_ARGS+=       --disable-compface
.endif

.if ${FLAVOR:L:Mldap}
WANTLIB-main+=		asn1 com_err gssapi krb5
LIB_DEPENDS-main+=	lber,ldap:openldap-client-*:databases/openldap
.else
CONFIGURE_ARGS+=	--disable-ldap
.endif

.if ${FLAVOR:L:Mdebug}
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/claws-mail
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/claws-mail

.include <bsd.port.mk>
