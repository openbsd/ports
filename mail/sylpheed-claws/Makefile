# $OpenBSD $

COMMENT=		"Lightweight GTK+ based mail/news client"
COMMENT-spamassassin=	"Spamassassin plugin for sylpheed-claws"

VERSION=		0.8.11
DISTNAME=		sylpheed-${VERSION}claws
PKGNAME=		sylpheed-claws-${VERSION}
CATEGORIES=		mail news x11

HOMEPAGE=		http://sylpheed-claws.sourceforge.net/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# GPL
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sylpheed-claws/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		gettext
LIB_DEPENDS=		gdk.1,gtk.1::x11/gtk+ \
			gthread.1::devel/glib

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--enable-ipv6 --enable-openssl \
			--program-suffix="-claws" \
			--enable-spamassassin-plugin
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=		compface gpgme jpilot ldap pixbuf
FLAVOR?=

MULTI_PACKAGES=		-spamassassin

# Need GNU/aspell >= 0.50
#.if ${FLAVOR:L:Maspell}
#LIB_DEPENDS+=		aspell::textproc/aspell
#CONFIGURE_ARGS+=	--enable-aspell
#.endif

.if ${FLAVOR:L:Mcompface}
PERMIT_PACKAGE_CDROM=   "No Fee"
PERMIT_DISTFILES_CDROM= "No Fee"
LIB_DEPENDS+=		compface.1::mail/faces
CONFIGURE_ARGS+=	--enable-compface
.else
CONFIGURE_ARGS+=	--disable-compface
.endif

.if ${FLAVOR:L:Mgpgme}
LIB_DEPENDS+=		gpgme.4::security/gpgme
CONFIGURE_ARGS+=	--enable-gpgme
.endif

.if ${FLAVOR:L:Mjpilot}
LIB_DEPENDS+=		pisock.4::comms/pilot-link
RUN_DEPENDS+=		:jpilot-*:comms/jpilot
CONFIGURE_ARGS+= 	--enable-jpilot
.endif

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=		ldap.2,lber.2:openldap-client-*:databases/openldap
CONFIGURE_ARGS+=	--enable-ldap
.endif

.if !${FLAVOR:L:Mpixbuf}
LIB_DEPENDS+=		gdk_imlib.19::graphics/imlib
CONFIGURE_ARGS+=	--enable-imblib --disable-gdk-pixbuf
.else
LIB_DEPENDS+=		gdk_pixbuf.2::graphics/gdk-pixbuf
CONFIGURE_ARGS+=	--enable-gdk-pixbuf --disable-imlib
.endif

.for i in ${MULTI_PACKAGES}
PKGNAME$i=              sylpheed-claws${i}-${VERSION}
.endfor

SUBPACKAGE?=

.if defined(PACKAGING) && !empty(SUBPACKAGE)
RUN_DEPENDS=            ::mail/sylpheed-claws
.else
RUN_DEPENDS+=		:p5-Mail-SpamAssassin-*:mail/p5-Mail-SpamAssassin
.endif

FILES=		OOo2sylpheed.pl calypso_convert.pl eud2gc.py \
		filter_conv.pl gif2xface.pl google_msgid.pl \
		gpg-sign-syl kmail2sylpheed.pl kmail2sylpheed_v2.pl \
		newscache_clean.pl outlook2sylpheed.pl \
		tb2sylpheed update-po uudec sylprint.pl sylprint.rc 

DATADIR=	${PREFIX}/share/sylpheed-claws
DOCSDIR=	${PREFIX}/share/doc/sylpheed-claws

post-patch:
	@(cd ${WRKSRC} && mv sylpheed.png sylpheed-claws.png && \
		mv sylpheed.desktop sylpheed-claws.desktop)
	@perl -pi -e 's|pheed|pheed-claws|g' ${WRKSRC}/sylpheed-claws.desktop

post-install:
	${INSTALL_DATA_DIR} ${DATADIR}
	@perl -pi -e 's|%%PREFIX%%|${TRUEPREFIX}|g' \
		${WRKSRC}/tools/sylpheed-switcher
	${INSTALL_SCRIPT} ${WRKSRC}/tools/sylpheed-switcher ${PREFIX}/bin/
.for f in ${FILES}
	${INSTALL_SCRIPT} ${WRKSRC}/tools/$f ${DATADIR}/$f
.endfor
	${INSTALL_DATA} ${WRKSRC}/tools/README ${DOCSDIR}/README.tools
	${INSTALL_DATA} ${WRKSRC}/tools/README.sylprint ${DOCSDIR}/
	${INSTALL_DATA} ${WRKSRC}/src/plugins/spamassassin/README \
		${DOCSDIR}/README.spamassassin
.for f in AUTHORS README README.claws README.jp RELEASE_NOTES.claws 
	${INSTALL_DATA} ${WRKSRC}/$f ${DOCSDIR}/$f
.endfor

.include <bsd.port.mk>
