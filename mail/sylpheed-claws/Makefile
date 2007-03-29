# $OpenBSD: Makefile,v 1.23 2007/03/29 06:10:32 steven Exp $

COMMENT-main=		"lightweight GTK+ based mail/news client"
COMMENT-dillo=		"dillo plugin for sylpheed-claws"
COMMENT-docs=		"sylpheed-claws FAQ and documentation"
COMMENT-imageviewer=	"image viewer plugin for sylpheed-claws"
COMMENT-spamassassin=	"spamassassin plugin for sylpheed-claws"
COMMENT-themes=		"sylpheed-claws themes"
COMMENT-trayicon=	"system tray icon plugin for sylpheed-claws"

VERSION=		1.9.6
DISTNAME=		sylpheed-claws-${VERSION}
PKGNAME=		${DISTNAME}p4
PKGNAME-main=		${DISTNAME}p4
THEMEFILE=		sylpheed-iconset-20040929
CATEGORIES=		mail news x11

HOMEPAGE=		http://sylpheed-claws.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sylpheed-claws/}
DISTFILES=		${DISTNAME}.tar.gz ${THEMEFILE}.tar.gz

MODULES=		devel/gettext

LIB_DEPENDS=		gdk_pixbuf-2.0::x11/gtk+2

WANTLIB=		X11 Xext Xrender crypto \
			fontconfig freetype m ssl \
			atk-1.0 gdk-x11-2.0 glib-2.0 \
			gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
			pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 cairo glitz png z

USE_X11=		Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--program-suffix="-claws" \
			--enable-ipv6 --enable-openssl \
			--enable-gdk-pixbuf --disable-imlib \
			--enable-spamassassin-plugin \
			--disable-clamav-plugin \
			--disable-mathml-viewer-plugin

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

FLAVORS=		compface pgpmime jpilot ldap
FLAVOR?=

MULTI_PACKAGES=		-main -dillo -docs -imageviewer -spamassassin -themes \
			-trayicon

FULLPKGNAME-dillo=	sylpheed-claws-dillo-${VERSION}p3
FULLPKGNAME-docs=	sylpheed-claws-docs-${VERSION}p3
FULLPKGNAME-imageviewer=sylpheed-claws-imageviewer-${VERSION}p3
FULLPKGNAME-spamassassin=sylpheed-claws-spamassassin-${VERSION}p3
FULLPKGNAME-themes=	sylpheed-claws-themes-${VERSION}p3
FULLPKGNAME-trayicon=	sylpheed-claws-trayicon-${VERSION}p4

RUN_DEPENDS-dillo=	::${BUILD_PKGPATH} \
			:dillo-*:www/dillo
RUN_DEPENDS-docs=	::${BUILD_PKGPATH}
RUN_DEPENDS-imageviewer=::${BUILD_PKGPATH}
RUN_DEPENDS-spamassassin=::${BUILD_PKGPATH} \
			:p5-Mail-SpamAssassin-*:mail/p5-Mail-SpamAssassin
RUN_DEPENDS-themes=	::${BUILD_PKGPATH}
RUN_DEPENDS-trayicon=	::${BUILD_PKGPATH}

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			startup-notification-1::devel/startup-notification
LIB_DEPENDS-docs=
LIB_DEPENDS-themes=

PKG_ARCH-themes=	*
PKG_ARCH-docs=		*

WANTLIB-main=		${WANTLIB} ICE SM c pthread gthread-2.0
WANTLIB-trayicon=	${WANTLIB} ICE SM
WANTLIB-themes=
WANTLIB-docs=

.if ${FLAVOR:L:Mcompface}
PERMIT_PACKAGE_CDROM=   "No Fee"
PERMIT_DISTFILES_CDROM= "No Fee"
LIB_DEPENDS+=		compface.>=1::mail/faces
CONFIGURE_ARGS+=	--enable-compface
.else
CONFIGURE_ARGS+=	--disable-compface
.endif

.if ${FLAVOR:L:Mpgpmime}
BROKEN=			Does not work with current gpgme version
LIB_DEPENDS+=		gpgme.>=4::security/gpgme
CONFIGURE_ARGS+=	--enable-pgpmime-plugin
.else
CONFIGURE_ARGS+=	--disable-pgpmime-plugin
.endif

.if ${FLAVOR:L:Mjpilot}
LIB_DEPENDS+=		pisock.>=4::comms/pilot-link
WANTLIB+=		ncurses readline
RUN_DEPENDS+=		:jpilot-*:comms/jpilot
CONFIGURE_ARGS+= 	--enable-jpilot
.endif

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=		ldap.>=2,lber.>=2:openldap-client-*:databases/openldap
CONFIGURE_ARGS+=	--enable-ldap
.endif

FILES=		OOo2sylpheed.pl calypso_convert.pl convert_mbox.pl  \
		eud2gc.py filter_conv.pl freshmeat_search.pl gif2xface.pl \
	      	gpg-sign-syl google_msgid.pl google_search.pl \
		kmail2sylpheed.pl kmail2sylpheed_v2.pl maildir2sylpheed.pl \
		multiwebsearch.pl nautilus2sylpheed.sh outlook2sylpheed.pl \
		sylpheed-switcher sylprint.pl sylprint.rc tb2sylpheed \
	      	textviewer.sh update-po uudec vcard2xml.py \
		kdeservicemenu/install.sh \
		kdeservicemenu/sylpheed-kdeservicemenu.pl

THEMES=		Crystal Everaldo_Kids Gnomeria Gorillaws \
		Graphitte-0.9.7 GurUnix Korillaws Kovico-sylpheed \
		New_Session Phoenity Plain_and_Bluish Skypilot_Clawssic \
		SylZilla Sylpholution XeNtish achileus-noname \
		black blue_anarchy mongrel mongrel2 mozilla orbit-claws \
		stw tml02c tom_2.1.1

DATADIR=	${PREFIX}/share/sylpheed-claws
DOCSDIR=	${PREFIX}/share/doc/sylpheed-claws

post-patch:
	@cd ${WRKSRC} && mv sylpheed.png sylpheed-claws.png && \
		mv sylpheed.desktop sylpheed-claws.desktop
	@cd ${WRKDIR}/${THEMEFILE} && mv "Skypilot Clawssic" \
		Skypilot_Clawssic

pre-configure:
	@perl -pi -e 's|pheed|pheed-claws|g' ${WRKSRC}/sylpheed-claws.desktop
	@perl -pi -e 's|%%PREFIX%%|${PREFIX}|g' \
		${WRKSRC}/tools/sylpheed-switcher

post-install:
	${INSTALL_DATA_DIR} ${DATADIR}/{themes,kdeservicemenu}
	${INSTALL_DATA_DIR} ${DOCSDIR}
.for d in ${THEMES}
	@cp -R ${WRKDIR}/${THEMEFILE}/$d ${DATADIR}/themes/
.endfor
	@find ${DATADIR}/themes -type d -print0 | xargs -0 chmod 755
	@find ${DATADIR}/themes -type f -print0 | xargs -0 chmod 444
	${INSTALL_SCRIPT} ${WRKSRC}/tools/sylpheed-switcher ${PREFIX}/bin/
.for f in ${FILES}
	${INSTALL_DATA} ${WRKSRC}/tools/$f ${DATADIR}/$f
.endfor
	${INSTALL_DATA} ${WRKSRC}/tools/README ${DOCSDIR}/README.tools
	${INSTALL_DATA} ${WRKSRC}/tools/README.sylprint ${DOCSDIR}/
	${INSTALL_DATA} ${WRKDIR}/${THEMEFILE}/README ${DOCSDIR}/README.themes
	${INSTALL_DATA} ${WRKSRC}/src/plugins/dillo_viewer/README \
		${DOCSDIR}/README.dillo
	${INSTALL_DATA} ${WRKSRC}/src/plugins/spamassassin/README \
		${DOCSDIR}/README.spamassassin
	${INSTALL_DATA} ${WRKSRC}/src/plugins/trayicon/README \
		${DOCSDIR}/README.trayicon
.for f in AUTHORS README README.claws RELEASE_NOTES.claws 
	${INSTALL_DATA} ${WRKSRC}/$f ${DOCSDIR}/$f
.endfor

.include <bsd.port.mk>
