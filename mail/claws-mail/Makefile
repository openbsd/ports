# $OpenBSD: Makefile,v 1.8 2007/09/08 15:22:40 pyr Exp $

COMMENT-main=		"mail and news client"
COMMENT-docs=		"documentation"
COMMENT-bogofilter=	"bogofilter plugin"
COMMENT-clamav=		"clamav plugin"
COMMENT-dillo=		"dillo plugin"
COMMENT-spamassassin=	"spamassassin plugin"

V=			3.0.0
DISTNAME=		claws-mail-${V}
PKGNAME-main=			${DISTNAME}
FULLPKGNAME-docs=		claws-mail-docs-${V}
FULLPKGNAME-bogofilter=		claws-mail-bogofilter-${V}
FULLPKGNAME-clamav=		claws-mail-clamav-${V}
FULLPKGNAME-dillo=		claws-mail-dillo-${V}
FULLPKGNAME-spamassassin=	claws-mail-spamassassin-${V}

CATEGORIES=		mail news

HOMEPAGE=		http://www.claws-mail.org/

MAINTAINER=		Ulrich Kahl <ulrich.kahl@cityweb.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sylpheed-claws/}
EXTRACT_SUFX=		.tar.bz2

DIST_SUBDIR=		claws

MULTI_PACKAGES=		-main -docs -bogofilter -clamav -dillo \
			-spamassassin
FLAVORS=		jpilot gnomeprint compface ldap debug
FLAVOR?=

FLAVOR_STRING=		${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=		FLAVOR_STRING

SHARED_ONLY=		Yes
RUN_DEPENDS-bogofilter=	::${BUILD_PKGPATH} \
			::mail/bogofilter 
RUN_DEPENDS-clamav=	::${BUILD_PKGPATH}
RUN_DEPENDS-dillo=	::${BUILD_PKGPATH} \
			::www/dillo 
RUN_DEPENDS-spamassassin=::${BUILD_PKGPATH} \
			::mail/p5-Mail-SpamAssassin 

WANTLIB=		X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
			Xrender crypto expat fontconfig freetype m ssl z

WANTLIB-main=		${WANTLIB} ICE SM c pthread stdc++

WANTLIB-docs=		
WANTLIB-clamav=		${WANTLIB} bz2 gmp idn

LIB_DEPENDS=		atk-1.0::devel/atk \
			cairo::graphics/cairo \
			gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
			glib-2.0,gmodule-2.0,gobject-2.0::devel/glib2 \
			glitz::graphics/glitz \
			pango-1.0,pangocairo-1.0,pangoft2-1.0::devel/pango \
			png::graphics/png \
			etpan::mail/libetpan \
			sasl2::security/cyrus-sasl2

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			gthread-2.0::devel/glib2 \
			startup-notification-1::devel/startup-notification \
			aspell::textproc/aspell/core \
			gpgme::security/gpgme \
			gpg-error::security/libgpg-error

LIB_DEPENDS-docs=
PKG_ARCH-docs=	*

LIB_DEPENDS-clamav=	${LIB_DEPENDS} \
			clamav::security/clamav \
			curl::net/curl

MODULES=		devel/gettext
USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.61
CONFIGURE_ENV+=		OPENSSL_CFLAGS="-I/usr/include/openssl" \
			OPENSSL_LIBS="-lssl -lcrypto" \
			CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"
.if ${FLAVOR:L:Mjpilot}
LIB_DEPENDS-main+=	pisock::comms/pilot-link 
RUN_DEPENDS-main+=	::comms/jpilot
.else
CONFIGURE_ARGS+=	--disable-jpilot
.endif

.if ${FLAVOR:L:Mgnomeprint}
WANTLIB-main+=		art_lgpl_2 xml2
LIB_DEPENDS-main+=	gnomecanvas-2::x11/gnome/libgnomecanvas \
			gnomeprint-2-2::x11/gnome/libgnomeprint \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui 
.else
CONFIGURE_ARGS+=	--disable-gnomeprint
.endif

.if ${FLAVOR:L:Mcompface}
PERMIT_PACKAGE_CDROM=   "No Fee"
PERMIT_DISTFILES_CDROM= "No Fee"
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
		convert_mbox.pl \
		eud2gc.py \
		filter_conv.pl filter_conv_new.pl \
		fix_date.sh \
		freshmeat_search.pl \
		gif2xface.pl \
		google_msgid.pl google_search.pl \
		kmail2claws-mail.pl kmail2claws-mail_v2.pl \
		kmail-mailbox2claws-mail.pl \
		multiwebsearch.pl \
		nautilus2claws-mail.sh \
		outlook2claws-mail.pl \
		sylprint.pl sylprint.rc \
		tb2claws-mail tbird2claws.py \
		textviewer.pl textviewer.sh \
		thunderbird-filters-convertor.pl \
		update-po \
		uudec uuooffice \
		vcard2xml.py \
		README README.sylprint \
		kdeservicemenu/install.sh kdeservicemenu/claws-mail-kdeservicemenu.pl \
		kdeservicemenu/README

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/claws-mail.desktop ${PREFIX}/share/applications/claws-mail.desktop
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
