# $OpenBSD: Makefile,v 1.1.1.1 2007/03/23 17:38:22 deanna Exp $

COMMENT-main=		"mail and news client"
COMMENT-docs=		"documentation"
COMMENT-bogofilter=	"bogofilter plugin"
COMMENT-clamav=		"clamav plugin"
COMMENT-dillo=		"dillo plugin"
COMMENT-pgp=		"several pgp plugins"
COMMENT-spamassassin=	"spamassassin plugin"

V=			2.8.1
DISTNAME=		claws-mail-$V
PKGNAME=		claws-mail
PKGNAME-main=		${DISTNAME}
FULLPKGNAME-docs=		${PKGNAME}-docs-$V
FULLPKGNAME-bogofilter=		${PKGNAME}-bogofilter-$V
FULLPKGNAME-clamav=		${PKGNAME}-clamav-$V
FULLPKGNAME-dillo=		${PKGNAME}-dillo-$V
FULLPKGNAME-pgp=		${PKGNAME}-pgp-$V
FULLPKGNAME-spamassassin=	${PKGNAME}-spamassassin-$V

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

MULTI_PACKAGES=		-main -docs
PSEUDO_FLAVORS=		no_bogofilter no_clamav no_dillo no_pgp \
			no_spamassassin
FLAVORS=		aspell compface jpilot ldap gnomeprint # gnome
FLAVOR?=

SHARED_ONLY=		Yes
RUN_DEPENDS-docs=	::${BUILD_PKGPATH}
RUN_DEPENDS-bogofilter=	::${BUILD_PKGPATH} \
			:bogofilter-*:mail/bogofilter 
RUN_DEPENDS-clamav=	::${BUILD_PKGPATH}
RUN_DEPENDS-dillo=	::${BUILD_PKGPATH} \
			::www/dillo 
RUN_DEPENDS-pgp=	::${BUILD_PKGPATH}
RUN_DEPENDS-spamassassin=	::mail/claws-mail \
				:p5-Mail-SpamAssassin-*:mail/p5-Mail-SpamAssassin 

WANTLIB=		X11 Xau Xdmcp Xrender crypto expat fontconfig \
			freetype m ssl z

WANTLIB-main=		${WANTLIB} ICE SM c pthread

WANTLIB-docs=		

MODULES=		devel/gettext
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
			startup-notification-1::devel/startup-notification
LIB_DEPENDS-docs=

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV+=		OPENSSL_CFLAGS="-I/usr/include/openssl" \
			OPENSSL_LIBS="-lssl -lcrypto" \
			CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"

.if !empty(FLAVOR:L:Mno_bogofilter)
CONFIGURE_ARGS+=	--disable-bogofilter-plugin
.else
MULTI_PACKAGES+=	-bogofilter
CONFIGURE_ARGS+=	--enable-bogofilter-plugin
LIB_DEPENDS-bogofilter= ${LIB_DEPENDS}
.endif

.if !empty(FLAVOR:L:Mno_clamav)
CONFIGURE_ARGS+=	--disable-clamav-plugin
.else
MULTI_PACKAGES+=	-clamav
CONFIGURE_ARGS+=	--enable-clamav-plugin
WANTLIB-clamav=		${WANTLIB} bz2 gmp
LIB_DEPENDS-clamav=	${LIB_DEPENDS} \
			clamav::security/clamav \
			curl::net/curl
.endif

.if !empty(FLAVOR:L:Mno_dillo)
CONFIGURE_ARGS+=	--disable-dillo-viewer-plugin
.else
MULTI_PACKAGES+=	-dillo
CONFIGURE_ARGS+=	--enable-dillo-viewer-plugin
WANTLIB-dillo=		${WANTLIB}
LIB_DEPENDS-dillo=	${LIB_DEPENDS}
.endif

.if !empty(FLAVOR:L:Mno_pgp)
CONFIGURE_ARGS+=	--disable-pgpcore-plugin \
			--disable-pgpmime-plugin \
			--disable-pgpinline-plugin
.else
MULTI_PACKAGES+=	-pgp
CONFIGURE_ARGS+=	--enable-pgpcore-plugin \
			--enable-pgpmime-plugin \
			--enable-pgpinline-plugin
LIB_DEPENDS-main+=	gpgme::security/gpgme \
			gpg-error::security/libgpg-error
WANTLIB-pgp=		${WANTLIB}
LIB_DEPENDS-pgp=	${LIB_DEPENDS} \
			gpgme::security/gpgme \
			gpg-error::security/libgpg-error 
.endif

.if !empty(FLAVOR:L:Mno_spamassassin)
CONFIGURE_ARGS+=	--disable-spamassassin-plugin
.else
MULTI_PACKAGES+=	-spamassassin
CONFIGURE_ARGS+=	--enable-spamassassin-plugin
WANTLIB-spamassassin=	${WANTLIB}
LIB_DEPENDS-spamassassin=${LIB_DEPENDS}
.endif

.if ${FLAVOR:L:Maspell}
CONFIGURE_ARGS+=	--enable-aspell
WANTLIB-main+=		stdc++	
LIB_DEPENDS-main+=	aspell::textproc/aspell/core 
.else
CONFIGURE_ARGS+=	--disable-aspell
.endif

.if ${FLAVOR:L:Mcompface}
PERMIT_PACKAGE_CDROM=   "No Fee"
PERMIT_DISTFILES_CDROM= "No Fee"
CONFIGURE_ARGS+=	--enable-compface
LIB_DEPENDS-main+=	compface.>=1::mail/faces
.else
CONFIGURE_ARGS+=	--disable-compface
.endif

# needs some work
.if ${FLAVOR:L:Mjpilot}
CONFIGURE_ARGS+=	--enable-jpilot
LIB_DEPENDS-main+=	pisock::comms/pilot-link 
RUN_DEPENDS-main+=	::comms/jpilot
.else
CONFIGURE_ARGS+=	--disable-jpilot
.endif

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+=	--enable-ldap
WANTLIB-main+=		
LIB_DEPENDS-main+=	
.else
CONFIGURE_ARGS+=	--disable-ldap
.endif

.if ${FLAVOR:L:Mgnomeprint}
CONFIGURE_ARGS+=	--enable-gnomeprint
WANTLIB-main+=		art_lgpl_2 xml2
LIB_DEPENDS-main+=	gnomecanvas-2::x11/gnome/libgnomecanvas \
			gnomeprint-2-2::x11/gnome/libgnomeprint \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui 
.else
CONFIGURE_ARGS+=	--disable-gnomeprint
.endif

# gnome

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/claws-mail.desktop ${PREFIX}/share/applications/claws-mail.desktop
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/48x48/apps
	${INSTALL_DATA} ${WRKSRC}/claws-mail.png ${PREFIX}/share/icons/hicolor/48x48/apps/claws-mail.png
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/64x64/apps
	${INSTALL_DATA} ${WRKSRC}/claws-mail-64x64.png ${PREFIX}/share/icons/hicolor/64x64/apps/claws-mail.png
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/128x128/apps
	${INSTALL_DATA} ${WRKSRC}/claws-mail-128x128.png ${PREFIX}/share/icons/hicolor/128x128/apps/claws-mail.png

.include <bsd.port.mk>
