# $OpenBSD: Makefile,v 1.2 2004/11/13 10:29:32 sturm Exp $

COMMENT=		"mail notification for freedesktop.org-compliant system trays"
DISTNAME=		mail-notification-0.6.2
CATEGORIES=		mail	

HOMEPAGE=		http://www.nongnu.org/mailnotify/
	
MAINTAINER=		Thomas Delaet <thomas@delaet.org>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		http://savannah.nongnu.org/download/mailnotify/

MODULES=		gettext 
BUILD_DEPENDS+=         :pkgconfig-*:devel/pkgconfig \
			:scrollkeeper-*:textproc/scrollkeeper \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS+=		:scrollkeeper-*:textproc/scrollkeeper \
			:gnome-icon-theme-*:x11/gnome/icon-theme
LIB_DEPENDS+=		eel-2::x11/gnome/eel
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=        --sysconfdir="${CONFDIR}"
CONFIGURE_ARGS+=	--disable-schemas-install \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/mail-notification
CPPFLAGS+=		-I${LOCALBASE}/include
LDFLAGS+=		-L${LOCALBASE}/lib
CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS}" LDFLAGS="${LDFLAGS}"

CONFDIR=		${SYSCONFDIR}/gnome
SUBST_VARS=		CONFDIR

FLAVORS=		gmail sasl
FLAVOR?=

.if ${FLAVOR:L:Msasl}
CONFIGURE_ARGS+=	--enable-sasl
LIB_DEPENDS+=		sasl2::security/cyrus-sasl2
.else
CONFIGURE_ARGS+=	--disable-sasl
.endif

.if ${FLAVOR:L:Mgmail}
CONFIGURE_ARGS+=	--enable-gmail
LIB_DEPENDS+=		soup-2.2.0.0::devel/libsoup
.else
CONFIGURE_ARGS+=	--disable-gmail
.endif

post-patch: 
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mail-notification
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/sound/events/mail-notification.soundlist \
			${PREFIX}/share/examples/mail-notification.soundlist
	${INSTALL_DATA_DIR} ${PREFIX}/share/schemas/mail-notification
	${INSTALL_DATA} ${WRKSRC}/data/mail-notification.schemas \
			${PREFIX}/share/schemas/mail-notification/

.include <bsd.port.mk>
